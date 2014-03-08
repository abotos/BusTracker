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
package org.cluj.bus.model;

public class IndividualBusInfo
{

    private double coordinateX;

    private double coordinateY;

    // In seconds
    private int timeToArrival;

    public double getCoordinateX()
    {
        return coordinateX;
    }

    public void setCoordinateX(double coordinateX)
    {
        this.coordinateX = coordinateX;
    }

    public double getCoordinateY()
    {
        return coordinateY;
    }

    public void setCoordinateY(double coordinateY)
    {
        this.coordinateY = coordinateY;
    }

    public int getTimeToArrival()
    {
        return timeToArrival;
    }

    public void setTimeToArrival(int timeToArrival)
    {
        this.timeToArrival = timeToArrival;
    }
}
