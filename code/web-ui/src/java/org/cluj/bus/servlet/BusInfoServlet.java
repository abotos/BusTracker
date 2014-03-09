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
import org.cluj.bus.*;
import org.cluj.bus.db.HibernateServiceProvider;
import org.cluj.bus.db.HibernateUtil;
import org.cluj.bus.model.BusInfo;
import org.cluj.bus.model.IndividualBusInfo;
import org.cluj.bus.model.MapBoundsInfo;
import org.cluj.bus.pojo.Coordinate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.SimpleExpression;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

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
        Station station = (Station) HibernateServiceProvider.getINSTANCE().getReadService().loadFirst(Station.class, "businessId", stationId);
        final Collection<Object> stationBuses = HibernateServiceProvider.getINSTANCE().getReadService().load(StationBus.class, "station", station);

        Collection<BusInfo> busInfos = new ArrayList<>();
        for (Object stationBus : stationBuses)
        {
            BusInfo busInfo;
            final Bus bus = ((StationBus) stationBus).getBus();

            final Session session = HibernateUtil.openSession();
            final Transaction transaction = session.beginTransaction();
            final SimpleExpression busIdRestriction = Restrictions.eq("busId", bus.getBusinessId());
            final SimpleExpression isActiveRestriction = Restrictions.eq("isActive", true);
            final Collection<Object> activeTrips = session.createCriteria(Trip.class).add(busIdRestriction).add(isActiveRestriction).list();
            final Collection<IndividualBusInfo> individualBusInfos = new ArrayList<>();
            Object busLocationUpdate = null;
            for (Object activeTrip : activeTrips)
            {
                final Criterion tripIdRestriction = Restrictions.eq("trip", activeTrip);
                final Criterion latitudeRestriction = Restrictions.between("latitude", mapBoundsInfo.getSouthWest().getLatitude(), mapBoundsInfo.getNorthEast().getLatitude());
                final Criterion longitudeRestriction = Restrictions.between("longitude", mapBoundsInfo.getSouthWest().getLongitude(), mapBoundsInfo.getNorthEast().getLongitude());
                final Order order = Order.desc("lastUpdate");
                List<BusLocationUpdate> busLocationUpdateList = session.createCriteria(BusLocationUpdate.class).add(tripIdRestriction).add(latitudeRestriction).add(longitudeRestriction).addOrder(order).list();

                if (busLocationUpdateList.size() > 0)
                {
                    busLocationUpdate = busLocationUpdateList.get(0);
                    final IndividualBusInfo individualBusInfo = new IndividualBusInfo();
                    final Double latitude = ((BusLocationUpdate) busLocationUpdate).getLatitude();
                    final Double longitude = ((BusLocationUpdate) busLocationUpdate).getLongitude();
                    individualBusInfo.setCoordinate(new Coordinate(latitude, longitude));
                    individualBusInfos.add(individualBusInfo);
                }
            }
            transaction.commit();
            session.close();
            if(busLocationUpdate != null)
            {
                busInfo = new BusInfo();
                busInfo.setBusName(bus.getName());
                busInfo.setBusId(bus.getBusinessId());
                busInfo.setBusDisplayImage(bus.getDisplayImage());
                busInfo.setIndividualBusInfos(individualBusInfos);
                busInfos.add(busInfo);
            }
        }

        return new Gson().toJson(busInfos);
    }
}
