package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Customer;


@Component("customerDAO")
public class MySqlCustomerDAO implements CustomerDAO {
	/*
	 * Connection connection;
	 * 
	 * //DAO객체는 servlet이 아니기 때문에 servletcontext에 있는 커넥션 직접 접근 불가능
	 * //memberlistServlet에서 커넥션을 객체를 DAO에 주입해줄 것 public void
	 * setConnection(Connection connection) { this.connection = connection; }
	 */
	
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<Customer> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM customer ORDER BY nickname ASC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Customer> customers = new ArrayList<Customer>();
			
			while(rs.next()) {
				customers.add(new Customer()
										.setNickname(rs.getString("nickname"))
										);	
			}
			return customers;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	//MemberAddServlet에서 입력 폼으로 입력받은 데이터를 member객체로 담아서 
		//DAO로 전달할 예정
		@Override
		public int insert(Customer customer) throws Exception {
			int result = 0;
			Connection connection = null;
			PreparedStatement stmt = null;
			final String sqlInsert = "INSERT INTO CUSTOMER(ID, PASSWORD, NAME, NICKNAME, ADDRESS, SIGNUP_PATH, PI_ACCEPT, EMAIL)" +
													"VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
			
			try {
				connection = ds.getConnection();
				stmt = connection.prepareStatement(sqlInsert);
				stmt.setString(1, customer.getId());
				stmt.setString(2, customer.getPassword());
				stmt.setString(3, customer.getName());
				stmt.setString(4, customer.getNickname());
				stmt.setString(5, customer.getAddress());
				stmt.setString(6, customer.getSignup_path());
				stmt.setString(7, customer.getPi_accept());
				stmt.setString(8, customer.getEmail());
				
				//insert 성공하면 1 int 값 리턴
				result = stmt.executeUpdate();
			} catch(Exception e) {
				throw e;
			} finally {
				try {
					if(stmt != null) {
						stmt.close();
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
				
				try {
					if(connection != null) {
						connection.close();
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			return result;
		}
		
	
		
		@Override
		public int delete(String id) throws Exception {
			int result = 0;
			Connection connection = null;
			Statement stmt = null;
			
			
			 String sqlDelete = "DELETE FROM CUSTOMER WHERE ID="+"'"+ id+"'";
			
			try {
				connection = ds.getConnection();
				stmt = connection.createStatement();
				
				result = stmt.executeUpdate(sqlDelete);
				
			} catch(Exception e) {
				throw e;
			} finally {
				try {
					if(stmt != null) {
						stmt.close();
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
				
				try {
					if(connection != null) {
						connection.close();
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			return result;
		}

		
		
		
		
	
	//해당 멤버 데이터 조회
	@Override
	public Customer selectOne(String id) throws Exception {
		
		System.out.println(id);
		Customer customer = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlSelectOne = "SELECT * FROM customer WHERE id=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlSelectOne);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				customer = new Customer().setNickname(rs.getString("nickname")).setId(rs.getString("id"))
						 .setPassword(rs.getString("password"))
						 .setName(rs.getString("name"))
						 .setAddress(rs.getString("address"))
						 .setSignup_path(rs.getString("signup_path"))
						 .setPi_accept(rs.getString("pi_accept"))
						 .setEmail(rs.getString("email"));
						 
			} else {
				throw new Exception("해당 id을 가진 회원을 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return customer;
	}
	
	//해당 멤버 데이터 수정
	@Override
	public int update(Customer customer) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String nickname = customer.getNickname();
		String id = customer.getId();
		
		
		System.out.println(nickname);
		System.out.println(id);
		
		
		final String sqlUpdate = "UPDATE customer SET nickname=? WHERE id= ?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
		stmt.setString(1, customer.getNickname());
		stmt.setString(2, customer.getId());
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	
	// 로그인에서 사용하는 함수!!!!
	@Override
	//String email, String password을 가져옴 
	public Customer exist(String id, String password) throws Exception {
		System.out.println(id);
		System.out.println(password);
		Customer customer = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		//sql연결하는 쿼리문
		final String sqlExist = "SELECT * FROM customer WHERE id=? AND password=?";
		
		//
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlExist);
			stmt.setString(1, id);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if(rs.next()) {
				customer = new Customer()
									 .setNickname(rs.getString("nickname"))
									 .setId(rs.getString("id"))
									 .setPassword(rs.getString("password"))
									 .setName(rs.getString("name"))
									 .setAddress(rs.getString("address"))
									 .setSignup_path(rs.getString("signup_path"))
									 .setPi_accept(rs.getString("pi_accept"))
									 .setEmail(rs.getString("email"));
									 
									 
									 
									 
									 
			} else {
				return null;
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return customer;
	}}

