package spms.controller.customer;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;
import spms.vo.Customer;

@Component("/member/update.do")
public class MemberUpdateController implements Controller, DataBinding {
	MySqlCustomerDAO customerDAO = null;
	
	public MemberUpdateController setCustomerDAO(MySqlCustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
		return new Object[] {
				"customer", spms.vo.Customer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Customer customer = (Customer)model.get("customer");
		HttpSession session = (HttpSession)model.get("session");
		Customer refreshCustomer = (Customer)session.getAttribute("Customer");
		
		if(customer.getNickname() != null) {
			customerDAO.update(customer);
			refreshCustomer = customerDAO.selectOne(customer.getId());
			session.setAttribute("Customer", refreshCustomer);
			return "redirect:../mypage.jsp";
		} else {
			return "redirect:../update.do";
		}
	}

}
