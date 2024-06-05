package adopt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class AdoptFormService {
	private final AdoptFormMapper mapper;

	public AdoptFormService(SqlSession session) {
		this.mapper = session.getMapper(AdoptFormMapper.class);
	}

	public List<AdoptFormVO> getAdoptFormList() {
		return mapper.getAdoptFormList();
	}

	public int addAdoptForm(AdoptFormVO vo) {
		return mapper.addAdoptForm(vo);
	}
	public int updateAdoptForm(AdoptFormVO vo) {
		return mapper.updateAdoptForm(vo);
	}
}
