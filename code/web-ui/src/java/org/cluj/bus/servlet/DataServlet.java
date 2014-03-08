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
package org.cluj.bus.servlet;

import com.google.gson.Gson;
import org.cluj.bus.model.BusInfo;
import org.cluj.bus.model.IndividualBusInfo;
import org.cluj.bus.model.MapInfo;
import org.cluj.bus.model.StationInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;

public class DataServlet extends HttpServlet
{

    private static final String MIME_ENCODING = "UTF-8";

    private static final String RESPONSE_CONTENT_TYPE_ENCODING = "text/plain;charset=" + MIME_ENCODING;

    private static final String STATION_ID = "stationId";

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException
    {
        String stationId = httpServletRequest.getParameter(STATION_ID);

        httpServletResponse.setContentType(RESPONSE_CONTENT_TYPE_ENCODING);
        httpServletResponse.setCharacterEncoding(MIME_ENCODING);

        PrintWriter writer = httpServletResponse.getWriter();
        writer.write(getResponseString(stationId));
        writer.flush();
    }

    private String getResponseString(String stationId)
    {
        MapInfo mapInfo = new MapInfo();

        StationInfo stationInfo = new StationInfo();

        stationInfo.setCoordinateX(34.45);
        stationInfo.setCoordinateY(56.89);

        mapInfo.setStationInfo(stationInfo);

        Collection<BusInfo> busInfos = new ArrayList<>();
        BusInfo busInfo1 = new BusInfo();
        busInfo1.setBusId("33_1");
        ArrayList<IndividualBusInfo> individualBusInfos = new ArrayList<>();
        IndividualBusInfo individualBusInfo1_1 = new IndividualBusInfo();
        individualBusInfo1_1.setCoordinateX(45.5);
        individualBusInfo1_1.setCoordinateY(56.88);
        individualBusInfos.add(individualBusInfo1_1);
        IndividualBusInfo individualBusInfo1_2 = new IndividualBusInfo();
        individualBusInfo1_2.setCoordinateX(46.5);
        individualBusInfo1_2.setCoordinateY(57.89);
        individualBusInfos.add(individualBusInfo1_2);
        busInfo1.setIndividualBusInfos(individualBusInfos);
        busInfos.add(busInfo1);

        mapInfo.setBusInfos(busInfos);

        return new Gson().toJson(mapInfo);
    }
}
