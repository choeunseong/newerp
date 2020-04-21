package student;

import java.util.List;

public interface StudentDAO {

	int stuInsert(StudentVO stuVO);	// 원색등록

	List<StudentVO> stuSearchList(StudentVO stuVo);	// 학생목록 리스트
	int stuSearchListCnt(StudentVO stuVo);	// 학생목록 리스트 cnt

	int stuUpdate(StudentVO stuVO);	// 학생정보 수정




	
}
