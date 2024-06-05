package comment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import boards.BoardVO;
import comment.CommentMapper;

public class CommentService {
	private final CommentMapper mapper;
	public CommentService(SqlSession session) {
		this.mapper = session.getMapper(CommentMapper.class);
	}

	public List<CommentVO> getCommentList(int searchNo) {
		return mapper.getCommentList(searchNo);
	}
	public int insertComment(CommentVO vo) {
		return mapper.insertComment(vo);
	}
	public int updateComment(CommentVO vo) {
		return mapper.updateComment(vo);
	}
	public int deleteComment(int deleteNo) {
		return mapper.deleteComment(deleteNo);
	}
}
