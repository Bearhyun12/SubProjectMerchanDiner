package spms.controller.customer;

import java.util.Map;

import spms.annotation.Component;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;

@Component("/member/list.do")
public class MemberListController implements Controller {
	/*
	 * DI(Dependency Injection)
	 * 1) 클래스간 결합도 낮춤
	 * 2) MemberDAO 인터페이스를 선언하고 상속구현하므로써 다른 DBMS로의 전환 용이
	 * 3) 나중에 변경할 자동화 작업에 사용
	 * */
	
	MySqlCustomerDAO customerDAO = null;
	
	public MemberListController setMemberDAO(MySqlCustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		//리턴될 조회 결과 맵에 담음
		model.put("customerList", customerDAO.selectlist());
		
		return "/member/MemberList.jsp";
	}
}