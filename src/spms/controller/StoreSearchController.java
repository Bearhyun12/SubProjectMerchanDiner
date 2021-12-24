package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;

@Component("/store/search.do")
public class StoreSearchController implements Controller, DataBinding {
	StoreDAO storeDAO;
	
	public StoreSearchController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"value", String.class	
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		String value = (String) model.get("value");
		System.out.println("검색시 벨류값은? = "+value);
		model.put("searchValue", storeDAO.search(value));
		return "/store/SearchPage.jsp";
	}
	
	
}
