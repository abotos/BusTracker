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
import org.apache.log4j.Logger;
import org.cluj.bus.constants.Constants;
import org.cluj.bus.pojo.TripStatus;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TripStatusServlet extends HttpServlet
{
    private static final Logger LOGGER = Logger.getLogger(TripStatusServlet.class);

    @Override
        protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException
        {
            String tripStatusJson = httpServletRequest.getParameter(Constants.TRIP_STATUS_PARAMETER_KEY);
            final TripStatus tripStatus = new Gson().fromJson(tripStatusJson, TripStatus.class);

            //TODO: do something with this status
        }
}
