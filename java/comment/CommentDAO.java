package comment;
import java.util.List;
import org.apache.ibatis.session.SqlSession;


public class CommentDAO {
private final SqlSession session;
	
	public CommentDAO(SqlSession session) {
		this.session = session;
	}
	
	public List<CommentVO> getCommentList() {
		return session.selectList("Comment.CommentDAO.getCommentList");
	}
	
	public CommentVO getComment(int searchNo) {
		return session.selectOne("Comment.CommentDAO.getComment", searchNo);
	}
	
	public int insertComment(CommentVO vo) {
		return session.insert("Comment.CommentDAO.insertComment", vo);
	}
	
	public int insertPhotoComment(CommentVO vo) {
		return session.insert("Comment.CommentDAO.insertComment", vo);
	}
	
	public int updateComment(CommentVO vo) {
		return session.update("Comment.CommentDAO.updateComment", vo);
	}
	
	public int deleteComment(int deleteNo) {
		return session.delete("Comment.CommentDAO.deleteComment", deleteNo);
	}
	

}

