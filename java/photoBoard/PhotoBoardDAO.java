package photoBoard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;



public class PhotoBoardDAO {
	private final SqlSession session;

	public PhotoBoardDAO(SqlSession session) {
		this.session = session;
	}

	public List<PhotoBoardVO> getPhotoBoardList() {
		return session.selectList("photoBoard.PhotoBoardDAO.getPhotoBoardList");
	}

	public PhotoBoardVO getPhotoBoard(int searchNo) {
		return session.selectOne("photoBoard.PhotoBoardDAO.getPhotoBoard", searchNo);
	}

	public int insertPhotoBoard(PhotoBoardVO vo) {
		return session.insert("photoBoard.PhotoBoardDAO.insertPhotoBoard", vo);
	}

	public int updatePhotoBoard(PhotoBoardVO vo) {
		return session.update("photoBoard.PhotoBoardDAO.updatePhotoBoard", vo);
	}

	public int deletePhotoBoard(int deleteNo) {
		return session.delete("photoBoard.PhotoBoardDAO.deletePhotoBoard", deleteNo);
	}

}
