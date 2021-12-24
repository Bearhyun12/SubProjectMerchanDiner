package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;
import spms.vo.Store;

@Component("/store/update.do")
public class StoreUpdateController implements Controller, DataBinding {
	StoreDAO storeDAO;
	
	public StoreUpdateController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	 @Override
	public Object[] getDataBinders() {
		// TODO Auto-generated method stub
		return new Object[] {
				"store_num", Integer.class,
				"store", spms.vo.Store.class
		};
	}
	
	 
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Store store = (Store)model.get("store");
		System.out.println(store.toString());
		
		if(store.getStore_name() == null) {
			Integer no = (Integer) model.get("store_num");
			Store storeInfo = storeDAO.selectOne(no);
			model.put("store", storeInfo);
			System.out.println(storeInfo.toString());
			return "/store/Detail-page-updateForm.jsp";
		}else {
			System.out.println(store.toString());
			storeDAO.update(store);
			return "redirect:list.do";
		}
	}
	
}
