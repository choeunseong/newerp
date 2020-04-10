package main;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	private MainService mainService;
	public final String MAIN_PATH = "/WEB-INF/views/main.jsp";
	
	public MainController() {}
	
	public MainController(MainService mainService) {
		super();
		this.mainService = mainService;
	}

	// 로그인페이지(index.jsp)로 보내주는 메서드
	@RequestMapping("/index.do")
	public String IndexAction() {
		return "/WEB-INF/views/index.jsp";
	}
	
	// main.jsp로 보내주는 메서드
	@RequestMapping("/main.do")
	public String MainAction() {
		return MAIN_PATH;
	}
	
	// 로그인 메서드
	@RequestMapping("/login.do")
	@ResponseBody
	public Map<String, String> LoginAction(MainVO vo, HttpServletRequest request) {
		
		Map map = new HashMap();
		MainVO resultVo = mainService.loginCheck(vo);
		
		/*
		 * if(resultVo == null) { map.put("result", "no_id"); }else {
		 * if(vo.getUser_pw().equals( resultVo.getUser_pw().toString() ) == false) {
		 * map.put("result", "no_pw"); }else { HttpSession session =
		 * request.getSession(); session.setAttribute("user", resultVo);
		 * map.put("result", "success"); } }
		 */
		if(resultVo == null) {
			map.put("result", "no_id");
		}else if(resultVo.getUser_permit().equals("C") == true) {
			map.put("result", "refuse");
		}else if(resultVo.getUser_permit().equals("B") == true) {
			map.put("result", "wait");
		}else {
			if(vo.getUser_pw().equals( resultVo.getUser_pw().toString() ) == false) {
				map.put("result", "no_pw");
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("user", resultVo); 
				map.put("result", "success");
			}
		}
		
		/*
		 * if(resultVo == null) { map.put("result", "no_id"); } else { if(
		 * resultVo.getUser_pw() != vo.getUser_pw() ) { System.out.println("암호...틀림");
		 * System.out.println("result = " + resultVo.getUser_pw());
		 * System.out.println(vo.getUser_pw()); map.put("result", "no_pw");
		 * 
		 * }else { HttpSession session = request.getSession();
		 * session.setAttribute("user", resultVo); map.put("result", "success"); } }
		 */
		
		return map;
	}
	
	// 로그아웃 메서드
	@RequestMapping("/logout.do")
	@ResponseBody
	public Map<String, String> logout( HttpServletRequest request) {
		
		request.getSession().removeAttribute("user");
		
		Map map = new HashMap();
		
		map.put("msg", "로그아웃되었습니다.");
		
		return map;
	}
	
	/*
	 * // 승인대기 회원 수
	 * 
	 * @RequestMapping("/waitCnt.do") public ModelAndView
	 * waitCnt(@RequestParam("user_id") String user_id) { ModelAndView mv = new
	 * ModelAndView(); System.out.println(user_id); int cnt =
	 * mainService.waitCnt(user_id); System.out.println(cnt); mv.addObject("cnt",
	 * cnt); mv.setViewName("/WEB-INF/views/include/left.jsp");
	 * 
	 * return mv; }
	 */
	
	
}
