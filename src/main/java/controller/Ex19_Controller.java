package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Ex16_Model3;
import model.Ex19_Model;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Ex19_Controller")
public class Ex19_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Ex19_Model model = new Ex19_Model();
		
		String path = model.exec(request, response);
		
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
	

}
