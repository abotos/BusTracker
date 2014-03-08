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

    @Column(name = "NAME", nullable = false)
    private String name;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }
}
