package Controller;

import java.io.IOException;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import java.sql.BatchUpdateException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import DAO.loginDAO;
import DAO.multiplexAdminDAO;
import DAO.multiplexAdminDAO;
import VO.loginVO;
import VO.multiplexAdminVO;
import VO.multiplexAdminVO;

/**
 * Servlet implementation class multiplexAdminController
 */
@WebServlet("/multiplexAdminController")
public class multiplexAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public multiplexAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag=request.getParameter("flag");
		if(flag.equals("search_multiplex_admin"))
		{
			System.out.println("Hey"+flag);
			multiplexAdminDAO admin_DAO=new multiplexAdminDAO();
			List<multiplexAdminVO> list_of_all_user=admin_DAO.search_all_multiplex_admin();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_user", list_of_all_user);
			
			response.sendRedirect("Admin/searchMultiplexAdmin.jsp");
			
		}
		else if(flag.equals("delete_user"))
		{
			System.out.println(flag);
			int user_id=Integer.parseInt(request.getParameter("user_id"));
			
			multiplexAdminVO add_city_VO=new multiplexAdminVO();
			add_city_VO.setId(user_id);
			
			multiplexAdminDAO admin_DAO=new multiplexAdminDAO();
			admin_DAO.delete_user(add_city_VO);
		
			response.sendRedirect("Admin/admin.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag=request.getParameter("flag");
		System.out.print(flag);
		if(flag.equals("add_multiplex_admin"))
		{
			System.out.print(flag);
			int multiplex_id=Integer.parseInt(request.getParameter("multiplex_id"));
			String user_name=request.getParameter("multiplex_username");
			String password = request.getParameter("password");
			String admin_name=request.getParameter("admin_name");
			String timestamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
			String email="davekushal99@gmail.com";
			/*SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
		    Date now = new Date();
		    String strDate = sdfDate.format(now);*/
			
			multiplexAdminVO obje=new multiplexAdminVO();
			obje.setMultiplex_id(multiplex_id);
			obje.setUser_name(user_name);
			obje.setPassword(password);
			obje.setAdmin_name(admin_name);
			obje.setTimestamp(timestamp);
			
			multiplexAdminDAO dao=new multiplexAdminDAO();
			List list=dao.search_username(obje);
			if(list != null && list.size()==1){
				
				response.sendRedirect("Admin/error_1.jsp");
			}
			else{
			loginVO loginvo=new loginVO();
			loginvo.setUsername(user_name);
			loginvo.setPassword(password);
			loginvo.setUsertype("multiplex");
			
			loginDAO logindao=new loginDAO();
			logindao.add_login(loginvo);
			
			multiplexAdminDAO admin_DAO2=new multiplexAdminDAO();
			admin_DAO2.add_multiplex_admin(obje);
			
			sendMail(email,user_name,password);
			
			response.sendRedirect("Admin/addMultiplexAdmin.jsp");
		}
		}
		else
		{
			System.out.print("ERROR");
		}
	}
protected void sendMail(String email,String user_name,String password)
{
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        try {
        	
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent("<h1>This is your Username "+user_name+" </h1>","text/html" );
            message.setContent("<h1>This is your Password "+password+"</h1>","text/html" );
            
            message.setSubject("OTP for Forgot password");
            
            InternetAddress sender = new InternetAddress("bhaumik55231@gmail.com","Mail");
            InternetAddress receiver = new InternetAddress(email);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "showcasaworld@gmail.com", "showcasa1234");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            
                      
        } catch (Exception e) {
            e.printStackTrace();
         }
		
       
		
	}
}
