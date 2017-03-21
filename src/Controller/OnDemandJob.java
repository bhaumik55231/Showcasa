package Controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpSession;

import DAO.transactionDAO;
import VO.transactionVO;
public class OnDemandJob 
{
	public OnDemandJob (Timestamp ts, String transaction_id) throws ParseException
	{
		int delay = 3; //Mintute delay
		ts.setTime( ts.getTime() + delay*60*1000 );
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = dateFormatter.format(ts);
		String[] s = {date.toString() , transaction_id};
		
		System.out.println("TS Constructor called for: "+s[0]+s[1]);
		OnDemandJob.main(s);
	}
private static class MyTimeTask extends TimerTask
{
	private String id;
	public MyTimeTask(String transaction_id)
	{
		id = transaction_id;
	}
	public void run()
    {
		Calendar cal = Calendar.getInstance();
        System.out.println("OnDemandJob called at "+cal.getTime());
        System.out.println("Passed Transaction ID: "+id);
        
        transactionVO transactionvo = new transactionVO();
        transactionDAO transactiondao = new transactionDAO();
        transactionvo.setTransaction_id(id);
        int task = transactiondao.follow_up(transactionvo);
        System.out.println("Update?: "+task);
    }
   
}

public static void main(String[] args) throws ParseException
{
	
    //the Date and time at which you want to execute
	System.out.println("Main called!");
	String s_date = args[0];
	String transaction_id = args[1];
	//transaction_id = "TR1121835";
    DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Date date = dateFormatter .parse(s_date);
    
    //Now create the time and schedule it
    Timer timer = new Timer();
    System.out.println("Timer is set for: "+date);
    //Use this if you want to execute it once
    timer.schedule(new MyTimeTask(transaction_id), date);

    //Use this if you want to execute it repeatedly
    //int period = 10000;//10secs
    //timer.schedule(new MyTimeTask(), date, period );
}


}
