package spms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Comment;
import spms.vo.Customer;

@Component("CommentDAO")
public class MySqlCommentDAO implements CommentDAO{
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<Comment> commentList(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM COMMENT WHERE STORE_NUM="+no+" ORDER BY REGDATE ASC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Comment> comments = new ArrayList<Comment>();
			while(rs.next()) {
				comments.add(new Comment()
										  .setId(rs.getString("id"))
										  .setStore_num(rs.getInt("store_num"))
										  .setContents(rs.getString("contents"))
										  .setRegDate(rs.getDate("REGDATE")));	
			}
			
			return comments;
		} catch(Exception e) {
			throw e;
		} finally {
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
	public List<Comment> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM COMMENT ORDER BY ID DESC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Comment> comments = new ArrayList<Comment>();
			while(rs.next()) {
				comments.add(new Comment()
										  .setId(rs.getString("id"))
										  .setStore_num(rs.getInt("store_num"))
										  .setContents(rs.getString("contents"))
										  .setRegDate(rs.getDate("REGDATE")));	
			}
			
			return comments;
		} catch(Exception e) {
			throw e;
		} finally {
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
	public int insert (Comment comment, String id, int no) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO COMMENT (ID, STORE_NUM, CONTENTS, REGDATE )" +
									   "VALUES(?, "+no+", ?, NOW())";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			//stmt.setString(1, id);
			stmt.setString(1, id);
			stmt.setString(2, comment.getContents());
			
			
			
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
	public Comment selectOne(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelectOne = "SELECT * FROM COMMENT WHERE STORE_NUM=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new Comment()
							.setId(rs.getString("id"))
							.setStore_num(rs.getInt("store_num"))
							.setContents(rs.getString("contents"));	
			} else {
				throw new Exception("�ش� ��ȣ�� ������Ʈ�� ã�� �� �����ϴ�.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
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
	
	public int update(Comment comment) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlUpdate = "UPDATE COMMENT SET ID=?, STORE_NUM=?, CONTENTS=?";
		
		try {
			connection = ds.getConnection();
			stmt.setString(1, comment.getId());
			stmt.setInt(2, comment.getStore_num());
			stmt.setString(3, comment.getContents());
			
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
	public int delete(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		
		String sqlDelete = "DELETE FROM COMMENT WHERE COMMENT_NUM=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			return stmt.executeUpdate(sqlDelete);
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
}
