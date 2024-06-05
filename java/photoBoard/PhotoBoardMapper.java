package photoBoard;

import java.util.List;

import common.SearchVO;

public interface PhotoBoardMapper {
	int getPhotoBoardListCount(SearchVO vo);
	List<PhotoBoardVO> getPhotoBoardList(SearchVO vo);
	PhotoBoardVO getPhotoBoard(int searchNo);
	int insertPhotoBoard(PhotoBoardVO vo);
	int updatePhotoBoard(PhotoBoardVO vo);
	int deletePhotoBoard(int deleteNo);
}
