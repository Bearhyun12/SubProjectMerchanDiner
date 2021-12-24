package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.StoreDAO;

@Component("/store/listAll.do")
public class StoreListAllController implements Controller {
	StoreDAO storeDAO;
	
	public StoreListAllController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		model.put("storeAll", storeDAO.selectAll());
		return "map.jsp";
	}
	
	
}
