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
import spms.vo.Store;


@Component("storeDAO")
public class MySqlStoreDAO implements StoreDAO {
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds=ds;
	}
	
	@Override
	public List<Store> selectAll() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM BOARD;";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Store> stores = new ArrayList<>();
			while(rs.next()) {
				stores.add(new Store()
									.setStore_num(rs.getInt("STORE_NUM"))
									.setStore_name(rs.getString("STORE_NAME"))
									.setStore_address(rs.getString("STORE_ADDRESS")));
			}
			return stores;
			
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(stmt != null) {
					stmt.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public List<Store> search(String value) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSearch = "select * from board where STORE_NAME LIKE '%"+value+"%'";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();

			rs = stmt.executeQuery(sqlSearch);
			
			ArrayList<Store> stores = new ArrayList<>();
			while(rs.next()) {
				stores.add(new Store()
									.setStore_num(rs.getInt("STORE_NUM"))
									.setStore_name(rs.getString("STORE_NAME"))
									.setLongitude(rs.getString("LONGITUDE"))
									.setLatitude(rs.getString("LATITUDE"))
									.setStore_name(rs.getString("STORE_NAME"))
									.setStore_address(rs.getString("STORE_ADDRESS")));
			}
			return stores;
			
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(stmt != null) {
					stmt.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public List<Store> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT A.ID, B.ID, B.STORE_NAME, B.STORE_ADDRESS, B.STORE_NUM FROM CUSTOMER A JOIN BOARD B ON A.ID=B.ID;";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Store> stores = new ArrayList<>();
			while(rs.next()) {
				stores.add(new Store()
									.setStore_num(rs.getInt("STORE_NUM"))
									.setStore_name(rs.getString("STORE_NAME"))
									.setStore_address(rs.getString("STORE_ADDRESS"))
									.setId(rs.getString("ID")));
			}
			return stores;
			
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(stmt != null) {
					stmt.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public int insert(Store store, Customer customer) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO BOARD(STORE_NAME, STORE_ADDRESS, TYPE, LONGITUDE, LATITUDE, HASHTAG, ID)" +
									   "VALUES(?, ?, ?, ?, ?, ?, ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, store.getStore_name());
			stmt.setString(2, store.getStore_address());
			stmt.setString(3, store.getType());
			stmt.setString(4, store.getLongitude());
			stmt.setString(5, store.getLatitude());
			stmt.setString(6, store.getHashTag());
			stmt.setString(7, customer.getId());
			
			return stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	@Override
	public Store selectOne(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelectOne = "SELECT * FROM board WHERE STORE_NUM=" + no;

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new Store()
						.setStore_num(rs.getInt("STORE_NUM"))
						.setStore_name(rs.getString("STORE_NAME"))
						.setStore_address(rs.getString("STORE_ADDRESS"))
						.setType(rs.getString("TYPE"))
						.setLongitude(rs.getString("LONGITUDE"))
						.setLatitude(rs.getString("LATITUDE"))
						.setHashTag(rs.getString("HASHTAG"))
						.setId(rs.getString("ID"));
			}else {
				throw new Exception("해당 번호의 게시글을 찾을 수 없습니다.");
			}
			
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	@Override
	public int update(Store store) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlUpdate = "UPDATE BOARD SET STORE_NAME=?, STORE_ADDRESS=?, TYPE=?, LONGITUDE=?, LATITUDE=?, HASHTAG=? WHERE STORE_NUM=?";
	
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, store.getStore_name());
			stmt.setString(2, store.getStore_address());
			stmt.setString(3, store.getType());
			stmt.setString(4, store.getLongitude());
			stmt.setString(5, store.getLatitude());
			stmt.setString(6, store.getHashTag());
			stmt.setInt(7, store.getStore_num());
			
			return stmt.executeUpdate();
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			}catch (Exception e){
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	@Override
	public int delete(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		
		String sqlDelete = "DELETE FROM BOARD WHERE STORE_NUM=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			return stmt.executeUpdate(sqlDelete);
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
		}catch(Exception e) {
			throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
}
