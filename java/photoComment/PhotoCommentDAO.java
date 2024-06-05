package photoComment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class PhotoCommentDAO {
private final SqlSession session;
	
	public PhotoCommentDAO(SqlSession session) {
		this.session = session;
	}
	
	public List<PhotoCommentVO> getPhotoCommentList() {
		return session.selectList("photoComment.PhotoCommentDAO.getPhotoCommentList");
	}
	
	public PhotoCommentVO getPhotoComment(int searchNo) {
		return session.selectOne("photoComment.PhotoCommentDAO.getPhotoComment", searchNo);
	}
	
	public int insertPhotoComment(PhotoCommentVO vo) {
		return session.insert("photoComment.PhotoCommentDAO.insertPhotoComment", vo);
	}
	
	public int updatePhotoComment(PhotoCommentVO vo) {
		return session.update("photoComment.PhotoCommentDAO.updatePhotoComment", vo);
	}
	
	public int deletePhotoComment(int deleteNo) {
		return session.delete("photoComment.PhotoCommentDAO.deletePhotoComment", deleteNo);
	}
}
