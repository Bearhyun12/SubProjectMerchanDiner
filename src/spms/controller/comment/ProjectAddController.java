package spms.controller.comment;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.CommentDAO;
import spms.vo.Comment;
import spms.vo.Customer;

@Component("/comment/add.do")
public class ProjectAddController implements Controller, DataBinding {
	CommentDAO commentDAO;
	
	public ProjectAddController setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"store_num", Integer.class,
				"id", String.class,
				"contents", spms.vo.Comment.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Comment comment = (Comment)model.get("contents");
		Integer no = (Integer)model.get("store_num");
		String id= (String)model.get("id");
		if(comment.getContents() == null) {
			System.out.println("아이디 널값이라 안넘어갈거임");
			return "/store/Detail-page.jsp";
		} else {
			commentDAO.insert(comment, id, no);
			System.out.println("인서트 메소드 실행됐음");

			return "redirect:/store/detail.do?store_num="+no;
		}
	}
}
