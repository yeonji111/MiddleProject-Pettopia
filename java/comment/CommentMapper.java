package comment;

import java.util.List;

import boards.BoardVO;

public interface CommentMapper {
	List<CommentVO> getCommentList(int searchNo);
	CommentVO getComment(int searchNo);
	int insertComment(CommentVO vo);
	int updateComment(CommentVO vo);
	int deleteComment(int deleteNo);
}
