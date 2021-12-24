package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;
import spms.vo.Customer;
import spms.vo.Store;

@Component("/store/list.do")
public class StoreListController implements Controller {
	StoreDAO storeDAO;
	
	public StoreListController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Customer customerId = (Customer)model.get("customerId");
		Store store = (Store)model.get("storeID");
		
		model.put("stores", storeDAO.selectlist());
		System.out.println(storeDAO.selectlist());
		return "/store/MyStoreList.jsp";
	}
	
	
}
