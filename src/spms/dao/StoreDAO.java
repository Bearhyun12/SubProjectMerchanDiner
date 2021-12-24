package spms.dao;

import java.util.List;

import spms.vo.Customer;
import spms.vo.Store;

public interface StoreDAO {
	List<Store> selectlist() throws Exception;
	List<Store> selectAll() throws Exception;
	List<Store> search(String value) throws Exception;
	int insert(Store store, Customer customer) throws Exception;
	Store selectOne(int no) throws Exception;
	int update(Store project) throws Exception;
	int delete(int no) throws Exception;
}
