package model;

import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Ex16_Model implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	String fruits = request.getParameter("fruits");
	//장바구니의 크기를 정할 수 없으므로 컬렉션에 담는다. 
	HttpSession ss = request.getSession();
	ArrayList<String> fruitBasket =
			(ArrayList<String>) ss.getAttribute("list");
	
	//맨 처음에는 해당 페이지로 넘어오면 당연히 session에는 list가 없다.
	if(fruitBasket==null) {
		fruitBasket = new ArrayList<>()	;
		ss.setAttribute("list", fruitBasket);
	}
	fruitBasket.add(fruits);
	return "Ex16_Session_Cart.jsp";
}
}
