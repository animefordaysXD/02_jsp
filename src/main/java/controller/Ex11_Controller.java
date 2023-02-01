package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Ex11_Model;

import java.io.IOException;
import java.io.PrintWriter;



@WebServlet("/Ex11_Controller")
public class Ex11_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Ex11_Model model =  new Ex11_Model();
		String path =  model.exec(request, response);
		
		// 페이지 이동 (리다이렉트(response)와 포워딩(request))
		   request.getRequestDispatcher(path).forward(request, response);
		// response.sendRedirect(path); // jsp에서 오류발생 
		
	}
}