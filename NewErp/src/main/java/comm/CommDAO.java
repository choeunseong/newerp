package comm;

import java.util.List;
import java.util.Map;

public interface CommDAO {

	List<CommVO> CodeSearch(CommVO vo);		// 공통코드 목록조회
	int codeCount(CommVO vo);				// 공통코드 count

	int CodeInsert(CommVO vo); 				// 공통코드저장
	int CodeDelete(CommVO vo);				// 공통코드 삭제
	int CodeUpdate(CommVO vo);				// 공통코드 수정
	
	List<CommVO> taskList(); 				// 업무구분리스트
	List<CommVO> TypeSearch(String cd_id); 	// 유형구분 리스트

//	-----------------------------------------------------------
	
	List<CommVO2> codeSearch2(CommVO2 vo2);	// 유형코드 목록조회
	int codeCount2(CommVO2 vo2);			// 유형코드 count
	
	int codeInsert2(CommVO2 vo2);			// 유형코드 저장
	int codeDelete2(CommVO2 vo2);			// 유형코드 삭제
	int codeUpdate2(CommVO2 vo2);			// 유형코드 수정
	
	List<CommVO> codeSelect(Map map);	// 해당 코드 가져오기 ex) 강의실, 강의과목 등등
	
	


	
}
