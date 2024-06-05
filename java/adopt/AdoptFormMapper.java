package adopt;

import java.util.List;

public interface AdoptFormMapper {
	List<AdoptFormVO> getAdoptFormList();
	int addAdoptForm(AdoptFormVO vo);
	int updateAdoptForm(AdoptFormVO vo);
}
