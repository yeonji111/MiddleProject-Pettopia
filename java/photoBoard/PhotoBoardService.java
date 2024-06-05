package photoBoard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;

public class PhotoBoardService {
	private final PhotoBoardMapper mapper;

	public PhotoBoardService(SqlSession session) {
		this.mapper = session.getMapper(PhotoBoardMapper.class);
	}

	public int getPhotoBoardListCount(SearchVO vo) {
		return mapper.getPhotoBoardListCount(vo);
	}

	public List<PhotoBoardVO> getPhotoBoardList(SearchVO vo) {
		return mapper.getPhotoBoardList(vo);
	}

	public PhotoBoardVO getPhotoBoard(int searchNo) {
		return mapper.getPhotoBoard(searchNo);
	}

	public int insertPhotoBoard(PhotoBoardVO vo) {
		return mapper.insertPhotoBoard(vo);
	}

	public int updatePhotoBoard(PhotoBoardVO vo) {
		return mapper.updatePhotoBoard(vo);
	}

	public int deletePhotoBoard(int deleteNo) {
		return mapper.deletePhotoBoard(deleteNo);
	}
}
