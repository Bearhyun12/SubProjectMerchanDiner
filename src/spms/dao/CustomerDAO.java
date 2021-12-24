package spms.dao;

import java.util.List;

import spms.vo.Customer;

/*
 * 인터페이스 생성 이유
 * 
 * Oracle, MySql, MSSql 등 DBMS 변경시 
 * 이 인터페이스를 상속받는 DAO 클래스를 정의하되
 * 각 DBMS 특성에 맞게 구현하여 DBMS 교체를 쉽게 함
 * 메서드의 역할과 리턴 값은 동일하게 처리
 * 
 * */
public interface CustomerDAO {
	public List<Customer> selectlist() throws Exception;
	public int insert(Customer customer) throws Exception;
	public int delete(String id) throws Exception;
	public Customer selectOne(String id) throws Exception;
	public int update(Customer customer) throws Exception;
	public Customer exist(String id, String password) throws Exception;

}

