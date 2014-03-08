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
package org.cluj.bus.pojo;

/**
 * POJO class that represents the location of a bus
 */
public class BusLocation
{
    private String busId;

    private double xLat;

    private double yLat;

    public String getBusId()
    {
        return busId;
    }

    public void setBusId(String busId)
    {
        this.busId = busId;
    }

    public double getxLat()
    {
        return xLat;
    }

    public void setxLat(double xLat)
    {
        this.xLat = xLat;
    }

    public double getyLat()
    {
        return yLat;
    }

    public void setyLat(double yLat)
    {
        this.yLat = yLat;
    }
}
