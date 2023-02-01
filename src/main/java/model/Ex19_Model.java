package model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Ex19_Model implements Command {
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	String name = request.getParameter("name");
//	String age = request.getParameter("age");
//	String gender = request.getParameter("gender");
//	String[] hobby = request.getParameterValues("hobby");
//	
	request.setAttribute("name", name);
	request.setAttribute("age", request.getParameter("age"));
	request.setAttribute("gender", request.getParameter("gender"));
	request.setAttribute("hobby", request.getParameterValues("hobby"));
	
	return "Ex20_EL2_Result.jsp";
}
}
