package photoComment;

import java.util.List;

public interface PhotoCommentMapper {
	List<PhotoCommentVO> getPhotoCommentList(int searchNo);
	PhotoCommentVO getPhotoComment(int searchNo);
	int insertPhotoComment(PhotoCommentVO vo);
	int updatePhotoComment(PhotoCommentVO vo);
	int deletePhotoComment(int deleteNo);
}
