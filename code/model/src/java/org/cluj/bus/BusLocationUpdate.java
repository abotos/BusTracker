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

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "BUS_LOCATION_UPDATE")
@AttributeOverride(name = "id", column = @Column(name = "ID", nullable = false))
@SequenceGenerator(name = "SEQ", sequenceName = "S_BUS_LOCATION_UPDATE")
public class BusLocationUpdate
{

    @Id()
    @GeneratedValue(generator = "SEQ")
    @Column(name = "ID", nullable = false)
    private Long id;

    @Column(name = "LAST_UPDATE", insertable = false, updatable = false)
    private Timestamp lastUpdate;

    @ManyToOne(targetEntity = Trip.class)
    @JoinColumn(name = "TRIP_ID")
    private Trip trip;

    @Column(name = "COORDINATE_X", nullable = false)
    private Double coordinateX;

    @Column(name = "COORDINATE_Y", nullable = false)
    private Double coordinateY;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Timestamp getLastUpdate()
    {
        return lastUpdate;
    }

    public void setLastUpdate(Timestamp lastUpdate)
    {
        this.lastUpdate = lastUpdate;
    }

    public Trip getTrip()
    {
        return trip;
    }

    public void setTrip(Trip trip)
    {
        this.trip = trip;
    }

    public Double getCoordinateX()
    {
        return coordinateX;
    }

    public void setCoordinateX(Double coordinateX)
    {
        this.coordinateX = coordinateX;
    }

    public Double getCoordinateY()
    {
        return coordinateY;
    }

    public void setCoordinateY(Double coordinateY)
    {
        this.coordinateY = coordinateY;
    }
}
