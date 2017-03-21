package Controller;
import java.net.*;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class smsController
 */
@WebServlet("/smsController")
public class smsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public smsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mobileno=request.getParameter("no");
		System.out.println(mobileno);
		sendsms(mobileno);
		/*try {
            // Construct data
            String data = "";
            
             * Note the suggested encoding for certain parameters, notably
             * the username, password and especially the message.  ISO-8859-1
             * is essentially the character set that we use for message bodies,
             * with a few exceptions for e.g. Greek characters.  For a full list,
             * see:  http://developer.bulksms.com/eapi/submission/character-encoding/
             
            data += "username=" + URLEncoder.encode("myusername", "ISO-8859-1");
            data += "&password=" + URLEncoder.encode("xxxxxx", "ISO-8859-1");
            data += "&message=" + URLEncoder.encode("This is a test", "ISO-8859-1");
            data += "&want_report=1";
            data += "&msisdn="+no;

            // Send data
            // Please see the FAQ regarding HTTPS (port 443) and HTTP (port 80/5567)
            URL url = new URL("«EAPI URL»/submission/send_sms/2/2.0");

            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write(data);
            wr.flush();

            // Get the response
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = rd.readLine()) != null) {
                // Print the response output...
                System.out.println(line);
            }
            wr.close();
            rd.close();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
	}
	private void sendsms(String mobileno){
		try {
            // Construct data
            String data = "";
            /*
             * Note the suggested encoding for certain parameters, notably
             * the username and password.
             *
             * Please remember that 16bit support is a route-specific feature.
             * Please contact us if you need to confirm the status of a
             * particular route.
             *
             * Also, mobile handsets only implement partial support for non-
             * Latin characters in various languages and will generally only
             * support languages of the area of their distribution.
             * Please do not expect e.g. a handset sold in South America to
             * display Arabic text.
             */
            data += "username=" + URLEncoder.encode("bhaumikppatel", "ISO-8859-1");
            data += "&password=" + URLEncoder.encode("jagruti@754", "ISO-8859-1");
            data += "&message=" + stringToHex("Welcome to Showcasa \n");
            data += "&dca=16bit";
            data += "&want_report=1";
            data += "&msisdn="+mobileno;

            // Send data
            // Please see the FAQ regarding HTTPS (port 443) and HTTP (port 80/5567)
            URL url = new URL("https://bulksms.vsms.net/eapi/submission/send_sms/2/2.0");

            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write(data);
            wr.flush();

            // Get the response
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = rd.readLine()) != null) {
                // Print the response output...
                System.out.println(line);
            }
            wr.close();
            rd.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	static public String stringToHex(String s) {
        char[] chars = s.toCharArray();
        String next;
        StringBuffer output = new StringBuffer();
        for (int i = 0; i < chars.length; i++) {
            next = Integer.toHexString((int)chars[i]);
            // Unfortunately, toHexString doesn't pad with zeroes, so we have to.
            for (int j = 0; j < (4-next.length()); j++)  {
                output.append("0");
            }
            output.append(next);
        }
        return output.toString();
    }
}
