package spms.controller.comment;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.CommentDAO;
import spms.vo.Comment;

@Component("/comment/update.do")
public class ProjectUpdateController implements Controller, DataBinding {
	CommentDAO commentDAO;
	
	public ProjectUpdateController setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"no", Integer.class,
				"project", spms.vo.Comment.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Comment comment = (Comment)model.get("project");
		
		if(comment.getId() == null) {
			Integer no = (Integer)model.get("no");
			Comment detailInfo = commentDAO.selectOne(no);
			model.put("project", detailInfo);
			return "/project/ProjectUpdateForm.jsp";
		} else {
			Integer no = (Integer)model.get("no");
			Comment detailInfo = commentDAO.selectOne(no);
			commentDAO.update(comment);
			return "redirect:/store/detail.do?store_num="+no;
		}
	}
}
