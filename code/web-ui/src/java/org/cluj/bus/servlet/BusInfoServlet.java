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
import org.cluj.bus.model.MapBoundsInfo;
import org.cluj.bus.pojo.Coordinate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

public class BusInfoServlet extends HttpServlet
{

    private static final String MAP_BOUNDS_PARAMETER_KEY = "mapBounds";

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException
    {
        String stationId = httpServletRequest.getParameter(ServletUtils.STATION_ID_PARAMETER_KEY);
        String mapBoundsString = httpServletRequest.getParameter(MAP_BOUNDS_PARAMETER_KEY);

        MapBoundsInfo mapBoundsInfo = new Gson().fromJson(mapBoundsString, MapBoundsInfo.class);

        ServletUtils.sendResponse(httpServletResponse, getResponseString(stationId, mapBoundsInfo));
    }

    private String getResponseString(String stationId, MapBoundsInfo mapBoundsInfo)
    {
        // TODO get the buses based on stationId
        // and only the ones that are within the map bounds
        Collection<BusInfo> busInfos = new ArrayList<>();
        BusInfo busInfo1 = new BusInfo();
        busInfo1.setBusId("33_1");
        ArrayList<IndividualBusInfo> individualBusInfos = new ArrayList<>();
        IndividualBusInfo individualBusInfo1_1 = new IndividualBusInfo();
        individualBusInfo1_1.setCoordinate(new Coordinate(46.7681 + ((Math.random() - 0.5) * 0.0005), 23.6308 + ((Math.random() - 0.5) * 0.0005)));
        individualBusInfos.add(individualBusInfo1_1);
        IndividualBusInfo individualBusInfo1_2 = new IndividualBusInfo();
        individualBusInfo1_2.setCoordinate(new Coordinate(46.7681 + ((Math.random() - 0.5) * 0.0005), 23.6292 + ((Math.random() - 0.5) * 0.0005)));
        individualBusInfos.add(individualBusInfo1_2);
        busInfo1.setIndividualBusInfos(individualBusInfos);
        busInfos.add(busInfo1);

        return new Gson().toJson(busInfos);
    }
}
