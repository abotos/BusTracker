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
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.log4j.Logger;
import org.cluj.bus.constants.Constants;
import org.cluj.bus.pojo.BusLocation;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class BotThread extends Thread
{

    private static final Logger LOGGER = Logger.getLogger(BotThread.class);

    // TODO unhardcode this
    private static final String SERVER_URI = "http://localhost:8080/bustracker/busUpdate";

    private static final int SLEEP_INTERVAL = 5000;

    private boolean running = true;

    public void setRunning(boolean running)
    {
        this.running = running;
    }

    @Override
    public void run()
    {
        while (running)
        {
            try
            {
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

    private void sendLocationUpdate(BusLocation location) throws IOException
    {
        CloseableHttpClient closeableHttpClient = HttpClients.createDefault();
        HttpPost httpPost = new HttpPost(SERVER_URI);
        List<NameValuePair> nameValuePairs = new ArrayList<>();
        nameValuePairs.add(new BasicNameValuePair(Constants.LOCATION_PARAMETER_KEY, new Gson().toJson(location)));
        httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairs));
        CloseableHttpResponse response = closeableHttpClient.execute(httpPost);

        LOGGER.info("Got response [statusCode=" + response.getStatusLine().getStatusCode() + "]");
    }

    private BusLocation getNextLocation()
    {
        BusLocation location = new BusLocation();

        location.setBusId("MyBus");
        location.setxLat(123.5);
        location.setyLat(22.6);

        return location;
    }
}