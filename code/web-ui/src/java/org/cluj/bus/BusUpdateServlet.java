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

import org.apache.log4j.Logger;
import org.cluj.bus.db.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BusUpdateServlet extends HttpServlet
{

    private static final Logger LOGGER = Logger.getLogger(BusUpdateServlet.class);

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException
    {
        super.doPost(httpServletRequest, httpServletResponse);
    }

    @Override
    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException
    {
        Session session = HibernateUtil.openSession();
        Transaction transaction = session.beginTransaction();

//        LOGGER.info("Saving object");
//
//        BusLocationUpdate newBusLocation = new BusLocationUpdate();
//        newBusLocation.setName("Test");
//
//        session.saveOrUpdate(newBusLocation);

        List<BusLocationUpdate> list = session.createCriteria(BusLocationUpdate.class).list();
        for (BusLocationUpdate busLocationUpdate : list)
        {
            LOGGER.info("BLU: [id=" + busLocationUpdate.getId() + " name=" + busLocationUpdate.getName() + "]");
        }

        transaction.commit();
        session.close();
    }
}
