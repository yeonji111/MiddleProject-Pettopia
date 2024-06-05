package photoComment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


public class PhotoCommentService {
	private final PhotoCommentMapper mapper;
	public PhotoCommentService(SqlSession session) {
		this.mapper = session.getMapper(PhotoCommentMapper.class);
	}

	public List<PhotoCommentVO> getPhotoCommentList(int searchNo) {
		return mapper.getPhotoCommentList(searchNo);
	}
	public int insertPhotoComment(PhotoCommentVO vo) {
		return mapper.insertPhotoComment(vo);
	}
	public int updatePhotoComment(PhotoCommentVO vo) {
		return mapper.updatePhotoComment(vo);
	}
	public int deletePhotoComment(int deleteNo) {
		return mapper.deletePhotoComment(deleteNo);
	}
}
