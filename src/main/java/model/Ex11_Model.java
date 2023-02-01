package model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Ex11_Model implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 일처리 ( 비즈니스 로직)
		// id와 pw 가 같으면 로그인 성공 , 다름 로그인 실패
		// 원래는 DB에서 확인 한 후 성공 / 실패를 나눠야 한다.
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals(pw)) {
			// 성공
			request.setAttribute("logchk", "1");
		}else {
			// 실패
			request.setAttribute("logchk", "0");
		}
		// mvc 에서는 클라이언트의 주소 리턴
		return "Ex12_Request_Result.jsp";
	}
}

