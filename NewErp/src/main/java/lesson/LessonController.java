package lesson;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import comm.CommService;
import comm.CommVO;
import member.MemberService;
import member.MemberVO;
import student.StudentService;

@Controller
public class LessonController {
	
	private LessonService lessonService;
	private StudentService studentService;
	private MemberService memberService;
	private CommService commService;
	
	public final String MAIN_PATH = "/WEB-INF/views/lesson/";
//	public final String MANA_PATH = "/WEB-INF/views/management/";
	
	public LessonController() {}
	
	public LessonController(LessonService lessonService, StudentService studentService, MemberService memberService, CommService commService) {
		super();
		this.lessonService = lessonService;
		this.studentService = studentService;
		this.memberService = memberService;
		this.commService = commService;
	}

	// 수업등록 화면 이동
	@RequestMapping(value = "lesson/lessonForm.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView lessonForm() {
		ModelAndView mv = new ModelAndView();
		
		List<CommVO> subList = commService.codeSelect("00", "1002");	// 강의과목
		List<CommVO> classroomList = commService.codeSelect("00", "1004");	// 강의실
		
		mv.addObject("subList", subList);
		mv.addObject("classroomList", classroomList);
		mv.setViewName(MAIN_PATH + "lesson_registration.jsp");
		
		return mv;
	}
	
	// 강의 등록
	@RequestMapping(value = "lesson/lessonInsert.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> lessonInsert(LessonVO lsVo){
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = lessonService.lessonInsert(lsVo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
	// 강사검색 Layer 열기
	@RequestMapping(value = "lesson/teacherSearchLayerOpen.do", method = RequestMethod.POST)
	public String teacherSearchLayerOpen() {
		
		return "/WEB-INF/views/comm/teacherPop.jsp";
	}
	
	// Layer 강사검색
	@RequestMapping(value = "lesson/teacherLayerSearch.do", method = RequestMethod.POST)
	public ModelAndView teacherLayerSearch(MemberVO memberVo) {
		ModelAndView mv = new ModelAndView();
		
		List<MemberVO> list = memberService.teacherLayerSearch(memberVo);
		
		mv.addObject("list", list);
		mv.setViewName("/WEB-INF/views/comm/teacherPop_search.jsp");
		
		return mv;
	}

	
}








