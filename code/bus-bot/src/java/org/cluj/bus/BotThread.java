/*
 * *************************************************************************
 * Copyright (C) FRS Belgium NV ("FRSGlobal"). All rights reserved.
 *
 * This computer program is protected by copyright law and international
 * treaties. Unauthorized reproduction or distribution of this program,
 * or any portion of it, may result in severe civil and criminal penalties,
 * and will be prosecuted to the maximum extent possible under the law.
 * *************************************************************************
 */
package org.cluj.bus;

import com.google.gson.Gson;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.log4j.Logger;
import org.cluj.bus.constants.Constants;
import org.cluj.bus.pojo.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class BotThread extends Thread
{
    private final String busId;
    
    private final Collection<WayPointInfo> wayPointInfoCollection;

    private static final Logger LOGGER = Logger.getLogger(BotThread.class);

    // TODO unhardcode this
    private static final String BUS_UPDATE_SERVLET_URL = "http://localhost:8080/bustracker/busUpdate";

    private static final String TRIP_STATUS_SERVLET_URL = "http://localhost:8080/bustracker/tripStatus";

    private static final int SLEEP_INTERVAL = 5000;

    private boolean running = true;

    public BotThread(String busId, Collection<WayPointInfo> wayPointInfoCollection)
    {
        this.busId = busId;
        this.wayPointInfoCollection = wayPointInfoCollection;
    }

    public void setRunning(boolean running)
    {
        this.running = running;
    }

    @Override
    public void run()
    {
        while (running)
        {
            String tripId;
            try
            {
                tripId = startTrip();

                runTrip(tripId);

                endTrip(tripId);


                // TODO do something
                LOGGER.info("BotThread is doing stuff");

                BusLocation location = getNextLocation();

                sendLocationUpdate(location);

                Thread.sleep(SLEEP_INTERVAL);
            }
            catch (InterruptedException e)
            {
                LOGGER.error("InterruptedException while sleeping", e);
            }
            catch (IOException e)
            {
                LOGGER.error("IOException while sending update", e);
            }
        }
    }

    private String startTrip() throws IOException
    {
        final TripStatus tripStatus = new TripStatus();
        tripStatus.setStatus(Status.STARTED);
        tripStatus.setBusId(busId);
        final CloseableHttpResponse response = getCloseableHttpResponse(TRIP_STATUS_SERVLET_URL, Constants.TRIP_STATUS_PARAMETER_KEY, tripStatus);
        final HttpEntity entity = response.getEntity();
        //TODO: get charset encoding from response!!!
        final String jsonReply = IOUtils.toString(entity.getContent(), "utf-8");
        final TripInfo tripInfo = new Gson().fromJson(jsonReply, TripInfo.class);
        return tripInfo.getTripId();
    }

    private void endTrip(String tripId) throws IOException
    {
        final TripStatus tripStatus = new TripStatus();
        tripStatus.setStatus(Status.ENDED);
        tripStatus.setBusId(busId);
        final CloseableHttpResponse response = getCloseableHttpResponse(TRIP_STATUS_SERVLET_URL, Constants.TRIP_STATUS_PARAMETER_KEY, tripStatus);
        final HttpEntity entity = response.getEntity();
        //TODO: get charset encoding from response!!!
        final String jsonReply = IOUtils.toString(entity.getContent(), "utf-8");
        final String status = new Gson().fromJson(jsonReply, String.class);
        if (status.equals("OK"))
        {
            LOGGER.info("Got response " + status);
        }
        else
        {
            LOGGER.error("An error occured " + status);
        }
    }

    public void runTrip(String tripId) throws IOException, InterruptedException
    {
        for(WayPointInfo wayPointInfo : this.wayPointInfoCollection)
        {
            final BusLocation busLocation = new BusLocation();
            busLocation.setBusId(this.busId);
            busLocation.setTripId(tripId);
            busLocation.setCoordinate(wayPointInfo.getCoordinate());
            sendLocationUpdate(busLocation);
            Thread.sleep(5000);
        }
    }

    private CloseableHttpResponse getCloseableHttpResponse(String servletAddress, String parameterKey, Object object) throws IOException
    {
        CloseableHttpClient closeableHttpClient = HttpClients.createDefault();
        HttpPost httpPost = new HttpPost(servletAddress);
        List<NameValuePair> nameValuePairs = new ArrayList<>();
        nameValuePairs.add(new BasicNameValuePair(parameterKey, new Gson().toJson(object)));
        httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairs));

        return closeableHttpClient.execute(httpPost);
    }

    private void sendLocationUpdate(BusLocation location) throws IOException
    {
        final CloseableHttpResponse response = getCloseableHttpResponse(BUS_UPDATE_SERVLET_URL, Constants.LOCATION_PARAMETER_KEY, location);

        LOGGER.info("Got response [statusCode=" + response.getStatusLine().getStatusCode() + "]");
    }

    private BusLocation getNextLocation()
    {
        BusLocation location = new BusLocation();

        location.setBusId("MyBus");
        location.setCoordinate(new Coordinate(123.5, 22.6));

        return location;
    }
}
