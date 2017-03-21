package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.itemDAO;
import DAO.loginDAO;
import VO.itemAgent;
import VO.itemBookingVO;
import VO.itemUpVO;
import VO.loginVO;

/**
 * Servlet implementation class itemController1
 */
@WebServlet("/itemController1")
@MultipartConfig
public class itemController1 extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private String encryptedfileName;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public itemController1()
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag = request.getParameter("flag");
		System.out.println("Flag from itemController1: "+flag);	
		if(flag.equals("item_dashboard"))
		{
			System.out.println("YEY");
			List<itemBookingVO> list_of_all_user = new ArrayList<itemBookingVO>();
			itemAgent ia = new itemAgent();
			itemDAO idao = new itemDAO();
			int login_id = (int) session.getAttribute("login");
			ia.setLogin_id(login_id);
			List<itemAgent> lia = new ArrayList<itemAgent>();
			lia = idao.getAgentByLogin_id(ia);
			int theatre_id = lia.get(0).getItem_agent_thatre();
			session.setAttribute("select_theatre_id", theatre_id);
			System.out.println(theatre_id);
			itemDAO idao2 = new itemDAO();
			itemBookingVO itemB2 = new itemBookingVO();
			itemB2.setTheatre_id(theatre_id);
			list_of_all_user = idao2.getBookedItem(itemB2);
			String put_code = "";
			for(int i=0;i<list_of_all_user.size();i++)
			{
				
				put_code=put_code+"<tr><td>"+list_of_all_user.get(i).getBooking_id()+"</td><td>"+list_of_all_user.get(i).getItem_name()+"</td><td>"+list_of_all_user.get(i).getItem_qty()+"</td><td>"+list_of_all_user.get(i).getPayment()+"</td><td>"+list_of_all_user.get(i).getTransaction_id()+"</td><td>"+list_of_all_user.get(i).getPickup()+"</td><td>"+list_of_all_user.get(i).getDate()+"</td><td>"+list_of_all_user.get(i).getTime()+"</td><td>"+list_of_all_user.get(i).getDelivery()+"</td><td><a class='btn btn-success' href='/Showcasa_user/itemController1?flag=item_delivery'>Proceed</a></td></tr>";	
			}
			session.setAttribute("put_code",put_code);
			response.sendRedirect("Admin/fooddashboard.jsp");
		}
		else if(flag.equals("item_delivery"))
		{
			System.out.println("YEY");
			
			response.sendRedirect("Admin/fooddashboard.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag = request.getParameter("flag");
		System.out.println("Flag from itemController1: "+flag);	
		if(flag.equals("add_item"))
		{
			for(Part filePart : request.getParts())
			{
				if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
				{
					//String fileTxtName = filePart.getName();
					System.out.println("hi1");
					String fileName = filePart.getSubmittedFileName();
					session.setAttribute("fileName",fileName);
					System.out.println(fileName);
				    InputStream fileContent = filePart.getInputStream();
				    // ... (do your job here)
				    
				    byte[] buffer = new byte[fileContent.available()];
					fileContent.read(buffer);
					
					String filePath = getServletContext().getRealPath(request.getServletPath());
					
					int path = filePath.lastIndexOf('\\');
					String path1= filePath.substring(0, path) +"\\doc\\";
					
				    // File targetFile = new File(path1+fileName);
				    // OutputStream outStream = new FileOutputStream(targetFile);
				    // outStream.write(buffer);
				    
					String encryptFileName = encryptFileName(fileName);
					session.setAttribute("encryptedName", encryptFileName);
					
				    File targetEncryptFile = new File(path1+encryptFileName);
				    OutputStream outStream = new FileOutputStream(targetEncryptFile);
				    outStream.write(buffer);
				    
				    System.out.println("File Output Path :: "+path1+encryptFileName);
				    System.out.println("hi2");
				    outStream.close();	
				}
			}
			do_db_entry(session,request);
			response.sendRedirect("Multiplex-Admin/add_item_form.jsp?flag=success");
		}
		else if(flag.equals("add_item_agent"))
		{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			itemAgent ia = new itemAgent();
			ia.setItem_username(username);
			itemDAO item_dao = new itemDAO();
			int search = item_dao.search_item_agent(ia);
			if(search!=0)
			{
				response.sendRedirect("Multiplex-Admin/addItemAgentForm.jsp?flag=fail");
			}
			else
			{	
				loginVO loginvo = new loginVO();
				loginvo.setUsername(username);
				loginvo.setPassword(password);
				loginvo.setUsertype("item");
				
				loginDAO logindao=new loginDAO();
				int login_id = logindao.add_login(loginvo);
				
				itemAgent ia1 = new itemAgent();
				ia1.setLogin_id(login_id);
				ia1.setItem_username(username);
				ia1.setAdded_by((String)session.getAttribute("session_name"));
				ia1.setItem_agent_thatre((int)session.getAttribute("select_theatre_id"));
				itemDAO dao2 = new itemDAO();
				dao2.add_agent(ia1);
				response.sendRedirect("Multiplex-Admin/addItemAgentForm.jsp?flag=success");
			}
		}
		else if(flag.equals("item_dashboard"))
		{
			System.out.println("YEY");
			response.sendRedirect("Multiplex-Admin/food_dashboard.jsp");
		}
		else if(flag.equals("item_delivery"))
		{
			System.out.println("YEY");
			
			response.sendRedirect("Multiplex-Admin/food_dashboard.jsp");
		}
		else
		{
			System.out.println("lalalal");
		}
	}
	private void do_db_entry(HttpSession session, HttpServletRequest request)
	{
		String item_name = request.getParameter("item_name");
		String item_description = "";
		if(request.getParameter("item_description")!=null)
		{
			item_description = request.getParameter("item_description");
		}
		int item_price = Integer.parseInt(request.getParameter("item_price"));
		int theatre_id = (int)session.getAttribute("select_theatre_id");
		String fileName = (String) session.getAttribute("fileName");
		String en_fileName = (String) session.getAttribute("encryptedName");
		System.out.println("from FUNC:"+en_fileName);
		itemUpVO vo = new itemUpVO();
		itemDAO dao = new itemDAO();
		vo.setEn_file_name(en_fileName);
		vo.setFile_name(fileName);
		vo.setItem_description(item_description);
		vo.setItem_name(item_name);
		vo.setItem_price(item_price);
		vo.setTheatre_id(theatre_id);
		dao.add_item(vo);
	}

	private String encryptFileName(String fileName)
	{
		 
		   Random r = new Random();
		   String file[] = fileName.split("\\.");
		  
		   byte[] unencodedFile = file[0].getBytes();
		   MessageDigest md = null;
		   try 
		   {
			   md = MessageDigest.getInstance("MD5");
		   } 
		   catch (Exception e) {}
		   md.reset();
		   md.update(unencodedFile);
		   byte[] encodedFile = md.digest();
		   StringBuffer buf = new StringBuffer();
		   for (int i = 0; i < encodedFile.length; i++)
		   {
			   if (((int) encodedFile[i] & 0xff) < 0x10)
			   {
				   buf.append("0");
			   }
			   buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
		   }
		   String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt())); 
		   System.out.println(encryptedFileName);
		   System.out.println("hi3");
		   return encryptedFileName+"."+file[1];
	}
}
