package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.Random;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.itemDAO;
import DAO.fileUploadDAO;
import VO.fileUpVO;
import VO.itemUpVO;

/**
 * Servlet implementation class itemController
 */
@MultipartConfig
@WebServlet("/itemController")
public class itemController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public itemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session =(((HttpServletRequest) request).getSession());
		int theatre_id=Integer.parseInt(request.getParameter("user_id"));
		System.out.println("Id="+theatre_id);
		String flag=request.getParameter("flag");
		session.setAttribute("flag", flag);
		session.setAttribute("theatre_id",theatre_id);
		System.out.println("A"+flag);
		session.setAttribute("flag",flag);
		if(flag.equals("get_form"))
		{
			response.sendRedirect("Multiplex-Admin/addItemForm.jsp");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag=request.getParameter("flag");
		System.out.println(flag);
		if(flag.equals("add_item"))
		{
			//int theatre_id=(Integer)session.getAttribute("theatre_id");
			int theatre_id=10;
			System.out.println(flag);
			String item_name=request.getParameter("item_title");
			String item_description=request.getParameter("item_description");
			int item_price=50;
			String item_seller=request.getParameter("item_seller");
			String item_image = request.getParameter("abc");
			
		
			itemUpVO item=new itemUpVO();
			
			item.setItem_seller(item_seller);
			item.setItem_name(item_name);
			item.setItem_description(item_description);
			item.setItem_price(item_price);
			item.setTheatre_id(theatre_id);
			item.setItem_image(item_image);
			
			
			itemDAO admin_DAO2=new itemDAO();
			admin_DAO2.add_item(item);
			
					
			response.sendRedirect("Multiplex-Admin/addItem.jsp");	
			for(Part filePart : request.getParts())
			{
				if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
				{
					//String fileTxtName = filePart.getName();
					
					String fileName = filePart.getSubmittedFileName();
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
					
				    File targetEncryptFile = new File(path1+encryptFileName);
				    OutputStream outStream = new FileOutputStream(targetEncryptFile);
				    outStream.write(buffer);
				    
				    System.out.println("File Output Path :: "+path1+fileName);
				    fileUpVO fileUpVO=new fileUpVO();
					fileUpVO.setFile_name(fileName);
					fileUpVO.setEncrypted_file_name(encryptFileName);
					fileUpVO.setItemUpVO(item);

					fileUploadDAO fileuploaddao=new fileUploadDAO();
					fileuploaddao.add_file(fileUpVO);
				    outStream.close();	
				    
				}
			}
			
		}
		else
		{
			response.sendRedirect("Multiplex-Admin/dashboard.jsp");
		}
		
	}

	private String encryptFileName(String fileName)
	{
		 
		   Random r = new Random();
		   String file[] = fileName.split("\\.");
		  
		   byte[] unencodedFile = file[0].getBytes();
		   MessageDigest md = null;
		   try {
		   md = MessageDigest.getInstance("MD5");
		   } catch (Exception e) {}
		   md.reset();
		   md.update(unencodedFile);
		   byte[] encodedFile = md.digest();
		   StringBuffer buf = new StringBuffer();
		   for (int i = 0; i < encodedFile.length; i++) {
		   if (((int) encodedFile[i] & 0xff) < 0x10) {
		   buf.append("0");
		   }
		   buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
		   }
		  
		   String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt())); 
		   
		   itemUpVO item=new itemUpVO();
		  
			
			itemDAO admin_DAO2=new itemDAO();
			admin_DAO2.add_item(item);
		   
		   return encryptedFileName+"."+file[1];
	   }

	}
