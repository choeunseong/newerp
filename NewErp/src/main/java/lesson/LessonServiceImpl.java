package lesson;

public class LessonServiceImpl implements LessonService {
	private LessonDAO lessonDAO;

	public void setLessonDAO(LessonDAO lessonDAO) {
		this.lessonDAO = lessonDAO;
	}

	// 강의등록
	@Override
	public int lessonInsert(LessonVO lsVo) {
		return lessonDAO.lessonInsert(lsVo);
	} 
	
	
	
}
