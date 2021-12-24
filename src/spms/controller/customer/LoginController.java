package spms.controller.customer;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;
import spms.vo.Customer;


/*
 * 페이지 컨트롤러들에서 Servlet이 제거되고 일반 클래스로 변하기 때문에
 * HttpServletRequest, HttpServletResponse 및 ServletContext를 사용할 수 없다
 * execute 메소드의 매개변수로 String Key값을 가지는 객체들을 맵에 담아서 전달
 * */
@Component("/auth/login.do")
public class LoginController implements Controller, DataBinding {
	 MySqlCustomerDAO customerDAO = null;
	 
	 public LoginController setCustomerDAO(MySqlCustomerDAO customerDAO) {
		 this.customerDAO = customerDAO;
		 return this;
	 }
	 
	 @Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		return new Object[] {
				"loginInfo", spms.vo.Customer.class
		};
	}
	 
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Customer loginInfo = (Customer)model.get("loginInfo");
		
		if(loginInfo.getId() == null) {
			return "/auth/LoginForm.jsp";
		} else {
			Customer customer = customerDAO.exist(loginInfo.getId(), loginInfo.getPassword());
			
			if(customer != null) {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("Customer", customer);
				return "redirect:../main-page.jsp";
			} else {
				return "/auth/LoginFail.jsp";
			}
		}
	}
}
