package comm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import paging.PagingVO;

@Controller
public class CommController {
	
	private CommService commService;
	public final String PATH = "/WEB-INF/views/management/";
	
	public CommController() {}
	
	public CommController(CommService commService) {
		super();
		this.commService = commService;
	}
	
	// 코드메뉴이동
	@RequestMapping("/codeMnu.do")
	public ModelAndView codeMnu() {
		
		ModelAndView mv = new ModelAndView();
		
		// 업무구분(comm_cmncdm) 조회
		List<CommVO> taskList = commService.taskList();
		
		mv.addObject("taskList", taskList);
		mv.setViewName(PATH + "code.jsp");
		
		return mv;
	}
	
	// 공통코드 조회
	@RequestMapping("/codeSearch.do")
	public ModelAndView CodeSearch(CommVO vo, HttpServletRequest request, @RequestParam(defaultValue = "1") int curPage) {
		ModelAndView mv = new ModelAndView();
//		System.out.println("sys= "+vo.getSys_scd());
//		System.out.println("cd= "+vo.getTp_cd());
		System.out.println("key= "+vo.getSearchKeyword());
		int cnt = commService.codeCount(vo);
		
		PagingVO paging = new PagingVO(cnt, curPage);
		
		vo.setStartIndex(paging.getStartIndex());
		vo.setCurrentPerPage(paging.getPageSize());
		
		List<CommVO> list = commService.CodeSearch(vo);		// 공통코드조회
		
		mv.addObject("list", list);
		mv.addObject("cnt", cnt);
		mv.addObject("paging", paging);
		mv.setViewName(PATH + "code_tab_search.jsp");
		
		return mv;
	}
	// 유형코드 조회
	@RequestMapping("/codeSearch2.do")
	public ModelAndView CodeSearch2(CommVO2 vo2, HttpServletRequest request, @RequestParam(defaultValue = "1") int curPage2) {
		ModelAndView mv = new ModelAndView();
//		System.out.println("sys= "+vo.getSys_scd());
//		System.out.println("cd= "+vo.getTp_cd());
//		System.out.println("key= "+vo.getSearchKeyword());
		int cnt = commService.codeCount2(vo2);

		PagingVO paging = new PagingVO(cnt, curPage2);
		
		vo2.setStartIndex(paging.getStartIndex());
		vo2.setCurrentPerPage(paging.getPageSize());
		
		List<CommVO2> list = commService.CodeSearch2(vo2);	// 유형코드 조회
		
		mv.addObject("list", list);
		mv.addObject("cnt", cnt);
		mv.addObject("paging", paging);
		mv.setViewName(PATH + "code_tab_search2.jsp");
		
		return mv;
	}
	
	// 유형코드(select box) 조회
	@RequestMapping("/typeSearch.do")
	@ResponseBody
	public Map<String, Object> TypeSearch(@RequestParam String cd_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<CommVO> list = commService.TypeSearch(cd_id);
		
		map.put("jsonData", list);
		return map;
	}
	
	// 공통코드 저장
	@RequestMapping("/codeInsert.do")
	@ResponseBody
	public Map<String, Object> CodeInsert(CommVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = commService.CodeInsert(vo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}
	
	// 유형코드 저장
	@RequestMapping("/codeInsert2.do")
	@ResponseBody
	public Map<String, Object> CodeInsert2(CommVO2 vo2) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = commService.CodeInsert2(vo2); 
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}
	
	// 공통코드 삭제
	@RequestMapping("/codeDelete.do")
	@ResponseBody
	public Map<String, Object> CodeDelete(CommVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = commService.CodeDelete(vo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}
	
	// 유형코드 삭제
	@RequestMapping("/codeDelete2.do")
	@ResponseBody
	public Map<String, Object> CodeDelete2(CommVO2 vo2) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = commService.CodeDelete2(vo2);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}
	
	// 공통코드 수정
	@RequestMapping("/codeUpdate.do")
	@ResponseBody
	public Map<String, Object> CodeUpdate(CommVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = commService.CodeUpdate(vo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}
	
	// 유형코드 수정
	@RequestMapping("/codeUpdate2.do")
	@ResponseBody
	public Map<String, Object> CodeUpdate2(CommVO2 vo2) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = commService.CodeUpdate2(vo2);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}
}
