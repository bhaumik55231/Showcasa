package Controller;

import java.io.IOException; 
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import DAO.changePasswordDAO;
import DAO.loginDAO;
import DAO.recoverPasswordDAO;
import VO.loginVO;

/**
 * Servlet implementation class forgotPasswordController
 */
@WebServlet("/forgotPasswordController")
public class forgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotPasswordController() {
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
	int OTP;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	HttpSession session =(((HttpServletRequest) request).getSession());
	String flag=request.getParameter("flag");
	if(flag.equals("checkMail")){
		
		String email = request.getParameter("emailid");
		session.setAttribute("Email",email);
		
		loginVO loginVO = new loginVO();
		loginVO.setUsername(email);
		System.out.println(email);
		loginDAO loginDAO = new loginDAO();
		
		List ls = loginDAO.forgetPassword(loginVO);
			
		if(ls != null && ls.size()>=1)
		{
			
			sendMail(email,generateOTP(5));
			response.sendRedirect("User/newPassword.jsp");
			session.setAttribute("OTP", OTP);
			System.out.println(session.getAttribute("OTP"));
		}
		else
		{
			response.sendRedirect("User/email.jsp");
		}
	}
	else if(flag.equals("recover_password")){
		System.out.println(flag);
		int otp2=(Integer)session.getAttribute("OTP");
		System.out.println(otp2);
		int otp_value=Integer.parseInt(request.getParameter("otp123"));
		
		
		if(otp_value==otp2){
			
			String email=(String)session.getAttribute("Email");
			System.out.println(email);
			
			
			loginVO LoginVO = new loginVO();
			LoginVO.setUsername(email);
			

			recoverPasswordDAO cpDAO = new recoverPasswordDAO();
			List list =  cpDAO.authentication(LoginVO);
			
			if(list != null && list.size()>=1){

				loginVO user=(loginVO) list.get(0);

				int y = user.getLogin_id();
				session.setAttribute("userID",y);
				System.out.println(y);
				
				String type = user.getUsertype();
				session.setAttribute("usertype",type);
				System.out.println(type);
				
				String email1 = user.getUsername();
				session.setAttribute("username",email1);
				System.out.println(email1);
				
				
				String new_password=request.getParameter("newpassword1");
				
				System.out.println(new_password);
				LoginVO.setLogin_id(y);
				LoginVO.setUsername(email);
				LoginVO.setUsertype(type);
				LoginVO.setPassword(new_password); 
				cpDAO.update(LoginVO);
				
				
				
				
				
				response.sendRedirect("User/index.jsp");
				
				
				
			}
			
			

			
		}
		else{
			response.sendRedirect("User/newPassword.jsp");
		}
		
		
		
	}
		else{
		response.sendRedirect("User/index.jsp");
		}
		}
	
	
	public int generateOTP(int limit) {

        int otp = 0;

        if (limit > 5 || limit < 1)
            limit = 3;

        for (int i = 0; i < limit; i++) {

            int x = new Random().nextInt(9);

            if (x == 0 && i == 0)
                i--;
            else
                otp = (otp * 10) + x;
        }
        OTP=otp;
        
        
        return otp;
    }
	
	
	
	protected void sendMail(String email,int OTP){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        try {
        	
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent("<h1>This is your OTP "+OTP+" Code</h1>","text/html" );
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


