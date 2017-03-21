package DAO;

import java.util.Calendar;

public class MinuteJob implements Runnable
{

    @Override
    public void run()
    {
    	Calendar cal = Calendar.getInstance();
        System.out.println("Minute Job here: " + cal.getTime());
    }

}
