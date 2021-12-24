package spms.controller.comment;

import java.util.Map;

import spms.annotation.Component;
import spms.controller.Controller;
import spms.dao.CommentDAO;

@Component("/comment/list.do")
public class ProjectCommentListController implements Controller {
	CommentDAO commentDAO;
	
	public ProjectCommentListController setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("projects", commentDAO.selectlist());
		return "/comment/Detail-page.jsp";
	}	
}
