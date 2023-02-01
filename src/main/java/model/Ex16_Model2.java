package model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Ex16_Model2 implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	
	
	
	
	return "Ex16_Session_Result.jsp";
}
}
