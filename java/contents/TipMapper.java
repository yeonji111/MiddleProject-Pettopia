package contents;

import java.util.List;

import common.SearchVO;

public interface TipMapper {
	int getTipListCount(SearchVO vo);
	List<TipVO> getTipList(SearchVO vo);
	TipVO getTip(int num);
}
