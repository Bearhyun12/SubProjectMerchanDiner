package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;

@Component("/store/delete.do")
public class StoreDeleteController implements Controller, DataBinding{
	StoreDAO storeDAO;
	
	public StoreDeleteController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"store_num", Integer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer)model.get("store_num");
		storeDAO.delete(no);
		
		return "redirect:list.do";
	}
	
	
}
