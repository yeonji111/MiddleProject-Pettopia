package boards;

import java.util.List;

import boards.BoardVO;
import common.SearchVO;

public interface BoardMapper {
	int getBoardListCount(SearchVO vo);
	List<BoardVO> getBoardList(SearchVO vo);
	BoardVO getBoard(int searchNo);
	int insertBoard(BoardVO vo);
	int updateBoard(BoardVO vo);
	int deleteBoard(int deleteNo);
}
