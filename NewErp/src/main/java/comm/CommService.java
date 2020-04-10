package comm;

import java.util.List;

public interface CommService {

	List<CommVO> CodeSearch(CommVO vo);			// 공통코드 조회
	int codeCount(CommVO vo);
	
	List<CommVO> taskList(); 					// 업무구분 리스트
	List<CommVO> TypeSearch(String cd_id); 		// 유형구분 리스트

	int CodeInsert(CommVO vo);					// 공통코드 저장
	int CodeDelete(CommVO vo);					// 공통코드 삭제
	int CodeUpdate(CommVO vo);					// 공통코드 수정
	
//	----------------------------------------------------------------
	
	List<CommVO2> CodeSearch2(CommVO2 vo2);		// 유형코드 조회
	int codeCount2(CommVO2 vo2);
	
	int CodeInsert2(CommVO2 vo2);				// 유형코드 저장
	int CodeDelete2(CommVO2 vo2);				// 유형코드 삭제
	int CodeUpdate2(CommVO2 vo2);				// 유형코드 수정



	
}
