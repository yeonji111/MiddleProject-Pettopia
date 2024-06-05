package adopt;

import java.util.List;

import common.SearchVO;

public interface AdoptMapper {
	int getAdoptListCount(SearchVO vo);
	List<AdoptVO> getAdoptList(SearchVO vo);
	AdoptVO getAdopt(int searchNo);
	int updateAdopt(AdoptVO vo);
}
