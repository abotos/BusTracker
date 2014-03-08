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

public class BotThread extends Thread
{

    private static final Logger LOGGER = Logger.getLogger(BotThread.class);

    private static final int SLEEP_INTERVAL = 5000;

    private boolean running = true;

    public void setRunning(boolean running)
    {
        this.running = running;
    }

    @Override
    public void run()
    {
        while (running)
        {
            try
            {
                // TODO do something
                LOGGER.info("BotThread is doing stuff");

                Thread.sleep(SLEEP_INTERVAL);
            }
            catch (InterruptedException e)
            {
                LOGGER.error("InterruptedException while sleeping", e);
            }
        }
    }
}
