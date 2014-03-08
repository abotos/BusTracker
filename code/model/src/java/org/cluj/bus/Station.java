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

@Entity
@Table(name = "STATION")
@AttributeOverride(name = "id", column = @Column(name = "ID", nullable = false))
@SequenceGenerator(name = "SEQ", sequenceName = "S_STATION")
public class Station
{
    @Id()
    @GeneratedValue(generator = "SEQ")
    @Column(name = "ID", nullable = false)
    private Long id;

    @Column(name = "BUSINESS_ID", nullable = false)
    private String businessId;

    @Column(name = "NAME", nullable = false)
    private String name;

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

    public String getBusinessId()
    {
        return businessId;
    }

    public void setBusinessId(String businessId)
    {
        this.businessId = businessId;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
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
