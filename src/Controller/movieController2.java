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
import javax.servlet.http.Part;
/**
 * Servlet implementation class movieController2
 */
@MultipartConfig
@WebServlet("/movieController2")
public class movieController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public movieController2() {
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
		String flag=request.getParameter("flag");
		System.out.println("flag Passed:"+flag);
 // Retrieves <input type="text" name="description">
	  
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
			    
			    outStream.close();
				
				
			}
		}
		
	}

	private String encryptFileName(String fileName){
		 
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

		   
		   return encryptedFileName+"."+file[1];
	   }
	
	}


