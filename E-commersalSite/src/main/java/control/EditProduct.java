package control;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.filechooser.FileNameExtensionFilter;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.DAO;
import entity.Account;
import entity.Category;
import entity.Product;

/**
 * Servlet implementation class EditProduct
 */
@MultipartConfig
@WebServlet("/editp")
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		DAO dao = new DAO();
		List<Category> listC = dao.selectAllCategories();
		request.setAttribute("listC", listC);
		String id = request.getParameter("id");
        Product p = dao.selectProduct(id);
        request.setAttribute("ep", p);
        request.getRequestDispatcher("./admin/EditProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletOutputStream os = response.getOutputStream();
        String folderName = "images";
        String uploadPath = "/Users/hoangduy/learn-jsp-servlets/workspace/WebProject/src/main/webapp/" + folderName;
        File dir = new File(uploadPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        String path = File.separator + fileName;
        InputStream is = filePart.getInputStream();
        Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		double price = Double.parseDouble(request.getParameter("price"));
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		DAO dao = new DAO();
		dao.editProduct(id, name, path, price, description, category);
		response.sendRedirect("ProductControl");
	}

}
