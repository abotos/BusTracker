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

package org.cluj.bus.db;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class WriteService implements IWriteService
{
    public void update(Object object)
    {
        final Session session = HibernateUtil.openSession();
        final Transaction transaction = session.beginTransaction();
        session.update(object);
        transaction.commit();
        session.close();
    }
}
