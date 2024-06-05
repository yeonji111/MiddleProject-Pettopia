package contents;

import org.apache.ibatis.session.SqlSession;

public class RecommendService {
	private final RecommendMapper mapper;
	public RecommendService(SqlSession session) {
		this.mapper = session.getMapper(RecommendMapper.class);
	}
	
	public RecommendVO getRecommendResult(RecommendVO vo) {
		return mapper.getRecommendResult(vo);
	}
	
}
