package adopt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;

public class AdoptService {
	private final AdoptMapper mapper;
	public AdoptService(SqlSession session) {
		this.mapper = session.getMapper(AdoptMapper.class);
	}
	public int getAdoptListCount(SearchVO vo) {
		return mapper.getAdoptListCount(vo);
	}
	public List<AdoptVO> getAdoptList(SearchVO vo) {
		return mapper.getAdoptList(vo);
	}
	public AdoptVO getAdopt(int searchNo) {
		return mapper.getAdopt(searchNo);
	}
	public int updateAdopt(AdoptVO vo) {
		return mapper.updateAdopt(vo);
	}
}
