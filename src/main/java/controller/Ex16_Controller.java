package controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Ex16_Model;

@WebServlet("/Ex16_Controller")
public class Ex16_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Ex16_Model model =  new Ex16_Model();
		String path =  model.exec(request, response);
		
		// 페이지 이동 (리다이렉트(response)와 포워딩(request))
		  // request.getRequestDispatcher(path).forward(request, response);
		// response.sendRedirect(path); // jsp에서 오류발생 
		response.sendRedirect(path);
	}
}