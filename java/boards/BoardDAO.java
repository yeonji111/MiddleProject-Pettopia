package boards;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import boards.BoardVO;

public class BoardDAO {
private final SqlSession session;
	
	public BoardDAO(SqlSession session) {
		this.session = session;
	}
	
	public List<BoardVO> getBoardList() {
		return session.selectList("boards.BoardDAO.getBoardList");
	}
	
	public BoardVO getBoard(int searchNo) {
		return session.selectOne("boards.BoardDAO.getBoard", searchNo);
	}
	
	public int insertBoard(BoardVO vo) {
		return session.insert("boards.BoardDAO.insertBoard", vo);
	}
	
	public int updateBoard(BoardVO vo) {
		return session.update("boards.BoardDAO.updateBoard", vo);
	}
	
	public int deleteBoard(int deleteNo) {
		return session.delete("boards.BoardDAO.deleteBoard", deleteNo);
	}
	

}
