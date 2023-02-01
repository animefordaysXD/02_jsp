package model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Ex16_Model3 implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	 //리스트 내용 비우기 
	
	HttpSession ss = request.getSession();
	//세션 초기화
	ss.invalidate();
	return "Ex16_Session_Cart.jsp";
}
}
