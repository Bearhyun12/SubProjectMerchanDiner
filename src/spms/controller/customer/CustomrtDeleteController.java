package spms.controller.customer;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;

@Component("/customer/delete.do")
public class CustomrtDeleteController implements Controller, DataBinding {
	MySqlCustomerDAO customerDAO = null;
	
	public CustomrtDeleteController setCustomerDAO(MySqlCustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		return new Object[] {
				"id", String.class,
				"password", String.class
		};
	}	
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {		
		String id = (String)model.get("id");
		String password = (String)model.get("password");
		customerDAO.delete(id);
		customerDAO.exist(id, password);
		
		
		return "redirect:/auth/logout.do";
	}
}
