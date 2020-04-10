package comm;

import java.util.List;

public class CommServiceImpl implements CommService {
	private CommDAO commDAO;

	public void setCommDAO(CommDAO commDAO) {
		this.commDAO = commDAO;
	}
	
	// 공통코드조회
	@Override
	public List<CommVO> CodeSearch(CommVO vo) {
		return commDAO.CodeSearch(vo);
	}
	// 공통코드 count
	@Override
	public int codeCount(CommVO vo) {
		return commDAO.codeCount(vo);
	}
	// 공통코드 저장
	@Override
	public int CodeInsert(CommVO vo) {
		return commDAO.CodeInsert(vo);
	}
	// 공통코드 삭제
	@Override
	public int CodeDelete(CommVO vo) {
		return commDAO.CodeDelete(vo);
	}
	// 공통코드 수정
	@Override
	public int CodeUpdate(CommVO vo) {
		return commDAO.CodeUpdate(vo);
	}
	// 업무구분(comm_cmnsys)조회
	@Override
	public List<CommVO> taskList() {
		return commDAO.taskList();
	}
	// 유형구분(comm_cmncgm)조회
	@Override
	public List<CommVO> TypeSearch(String cd_id) {
		return commDAO.TypeSearch(cd_id);
	}
	
	
	
	
	// 유형코드 조회
	@Override
	public List<CommVO2> CodeSearch2(CommVO2 vo2) {
		return commDAO.codeSearch2(vo2);
	}
	// 유형코드 count
	@Override
	public int codeCount2(CommVO2 vo2) {
		return commDAO.codeCount2(vo2);
	}
	// 유형코드 저장
	@Override
	public int CodeInsert2(CommVO2 vo2) {
		return commDAO.codeInsert2(vo2);
	}
	// 유형코드 삭제
	@Override
	public int CodeDelete2(CommVO2 vo2) {
		return commDAO.codeDelete2(vo2);
	}

	@Override
	public int CodeUpdate2(CommVO2 vo2) {
		return commDAO.codeUpdate2(vo2);
	} 



	
	
}
