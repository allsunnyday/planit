package com.earth.planit.web;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;
import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.impl.FileUtils;
import com.earth.planit.service.impl.PagingUtil;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class MemberController {
	/*
	 * MemberController 1] 로그인 페이지 2] 메인으로 이동 3] 회윈가입 페이지 4] 일반 회원 마이페이지
	 * 
	 * 
	 */
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;
	
	/* 서비스 주입 */
	@Resource(name = "memberService")
	private MemberService service;

	@RequestMapping("/planit/login/Login.it")
	public String gotoLogin() throws Exception {
		return "login/LoginForm.theme";
	}

	@RequestMapping("/Plait/Planit.it")
	public String gotoMain() throws Exception {
		return "main/main.tiles";// main은 반드시 tiles로 이동해야 함
	}

	@RequestMapping("/member/login/Join.it")
	public String gotoJoin() throws Exception {
		return "login/JoinMain.theme";
	}

	@RequestMapping("/member/login/UserJoin.it")
	public String gotoUserJoin(@RequestParam Map map) throws Exception {

		return "login/JoinUserProgress.theme";
	}

	// ***************마이페이지 이동(일반회원)
	@RequestMapping("/planit/mypage/MyPageHome.it")
	public String gotoMyPageHome(@RequestParam Map map,HttpSession session,Model model) throws Exception {
		map.put("id", session.getAttribute("id"));
		List<ReviewDTO> homeReviewList=service.homeReviewList(map);
		List<FaqNoticeDTO> homeQnAList=service.homeQNAList(map);
		model.addAttribute("homeReviewList", homeReviewList);
		model.addAttribute("homeQnAList", homeQnAList);
		
		return "mypage/MyPageHome.theme";
	}

	@RequestMapping("/planit/mypage/MyPageEditProfile.it")
	public String gotoMyPageEditProfile() throws Exception {

		return "mypage/MyPageEditProfile.theme";
	}

	// 프로필 수정처리
	@RequestMapping(value = "/planit/mypage/editsave.it", method = RequestMethod.POST)
	public String profileEdit(@RequestParam Map map, //
			MultipartHttpServletRequest mhsr,
			HttpSession session) throws Exception {
		// 1]서버의 물리적 경로 얻기
		String phicalPath = mhsr.getServletContext().getRealPath("/Upload/Member");
		// 1-1]MultipartHttpServletRequest객체의 getFile("파라미터명")메소드로
		// MultipartFile객체 얻기
		MultipartFile profile = mhsr.getFile("profile");
		// 2]File객체 생성
		// 2-1] 파일 중복시 이름 변경
		String newFilename = FileUtils.getNewFileName(phicalPath, profile.getOriginalFilename());

		File file = new File(phicalPath + File.separator + newFilename);
		// 3]업로드 처리
		profile.transferTo(file);
		map.put("profile", newFilename.toString().trim());
		map.put("id", session.getAttribute("id").toString());
		int affected = service.updateProfile(map);
		System.out.println(affected == 1 ? "입력성공" : "입력실패");
		return "forward:/planit/mypage/MyPageHome.it";
	}

	@RequestMapping("/planit/mypage/MyPageEditPassword.it")
	public String gotoMyPageEditPassword() throws Exception {

		return "mypage/MyPageEditPassword.theme";
	}

	/// ******임시
	@RequestMapping("/planit/mypage/MyPagePassCheck.it")
	public String gotoMyPagePassCheck() throws Exception {

		return "mypage/MyPagePassCheck.theme";
	}

	@RequestMapping("/planit/mypage/Preference.it")
	public String gotoPreference() throws Exception {

		return "mypage/UserPreference.theme";
	}

	@RequestMapping("/planit/mypage/Preference2.it")
	public String gotoPreference2() throws Exception {

		return "/mypage/UserPreference2.theme";
		/// planit/WebContent/WEB-INF/member/mypage/UserPreference2.jsp
	}
	// 마이페이지에서 회원정보 및 비밀번호 변경시 기존 비밀번호 체크를 위한 프로세스
	// 아직은 체크없이 바로 해당페이지로 이동합니다 :)
	/*
	 * @RequestMapping("/planit/mypage/MyPageEditProfile.it") public String
	 * gotoMyPageEditProfile()throws Exception{ return
	 * "mypage/MyPagePassCheck.theme"; }
	 * 
	 * @RequestMapping("/planit/mypage/MyPageEditPassword.it") public String
	 * gotoMyPageEditPassword()throws Exception{ return
	 * "mypage/MyPagePassCheck.theme"; }
	 */
	// ***************마이페이지 상세페이지 이동(일반회원)

	@RequestMapping("/planit/mypage/detail/Q&A.it")
	public String gotoQnADetail(Model model,//리퀘스트 영역 저장용
			HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,//검색용 파라미터 받기
			@RequestParam(required=false,defaultValue="1") int nowPage//페이징용 nowPage파라미터 받기용
			,HttpSession session
			) throws Exception {
		map.put("id", session.getAttribute("id"));
		//페이징을 위한 로직 시작]
				//전체 레코드 수
				int totalRecordCount= service.getTotalCount(map);
				
				//시작 및 끝 ROWNUM구하기]
				int totalPage = (int)Math.ceil(((double)totalRecordCount/pageSize));
				int start = (nowPage-1)*pageSize+1;
				int end  = nowPage*pageSize;
				map.put("start", start);
				map.put("end", end);
				String pagingString = CommonUtil.pagingBootStrapStyle(
						totalRecordCount,
						pageSize, 
						blockPage, 
						nowPage, 
						req.getContextPath()+"/planit/mypage/detail/Q&A.it?");
		List<FaqNoticeDTO> QnAListDetail=service.memberQnAList(map);
		
		System.out.println(session.getAttribute("id"));
		model.addAttribute("QnAListDetail", QnAListDetail);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		return "mypage/DetailQnA.theme";

	}

	@RequestMapping("/planit/mypage/detail/Review.it")
	public String gotoReviewDetail(@RequestParam Map map,HttpSession session,Model model) throws Exception {
		map.put("id", session.getAttribute("id"));
		List<ReviewDTO> reviewList=service.memberReviewList(map);
		
		model.addAttribute("reviewList", reviewList);
		return "mypage/DetailReview.theme";

	}

	@RequestMapping("/planit/mypage/detail/Liked.it")
	public String gotoLikedDetail() throws Exception {
		return "mypage/DetailLiked.theme";

	}

	@RequestMapping("/planit/mypage/detail/Planner.it")
	public String gotoPlannerDetail() throws Exception {
		return "mypage/DetailPlanner.theme";

	}

	/* 로그인 처리 method=RequestMethod.POST로 설정하여 get방식 접근을 막는다. */
	@RequestMapping(value = "/member/login/LoginProcess.it", method = RequestMethod.POST)
	public String loginProcess(@RequestParam Map map, HttpSession session, Model model) throws Exception {
		// form 하위 데이터가 잘 온것을 확인! key= input태그의 name속성
		System.out.println("id=" + map.get("id") + " pwd=" + map.get("pwd"));

		boolean isLogin = service.isLogin(map);
		System.out.println(isLogin);
		System.out.println();
		if (isLogin) { // 회원일경우
			// 로그인 처리 - 세션 영역에 저장
			session.setAttribute("id", map.get("id"));
			MemberDTO memberRecord = service.memberInfo(map);
			//이미지 세션에 저장하기
			System.out.println(memberRecord.getProfile());
			session.setAttribute("memberRecord", memberRecord);

			return "redirect:/";
		} else { // 비회원일경우

			model.addAttribute("loginError", "아이디와 비밀번호가 틀립니다.");
		}

		return "forward:/planit/login/Login.it";

	}

	// [로그아웃 처리]
	@RequestMapping("/member/login/Logout.it")
	public String logoutProcess(HttpSession session) throws Exception {
		session.invalidate();

		return "redirect:/Plait/Planit.it";

	}

	// [회원가입 처리]
	@RequestMapping(value = "/member/login/UserJoinFormProcess.it", method = RequestMethod.POST)
	public String userJoinFormProcess(MemberDTO dto, @RequestParam Map map, HttpSession session) throws Exception {
		System.out.println("비밀번호:" + map.get("pwd"));
		System.out.println("비밀번호:" + dto.getPwd());

		int isJoin = service.isJoin(dto);
		//
		System.out.println(isJoin);
		if (isJoin == 1) {
			session.setAttribute("id", map.get("id"));
			// 시용자 선호도를 하기 위한 preference 테이블에 추가 (총 23개가 insert되야한다)
			int insertPrefer = service.insertPreference(map);
			System.out.println("선호도 추가된 행 개수 " + insertPrefer);
		}
		return "mypage/UserPreference.theme";

		// 선호도 체크페이지 이동

	}

	@RequestMapping(value = "/planit/member/idcheck.it", method = RequestMethod.POST)
	@ResponseBody
	public String idcheck(@RequestBody String id) {

		int count = 0;
		count = service.idDuplicate(id) == true ? 0 : 1;
		System.out.println(count);
		// map.put("cnt", count);

		return String.valueOf(count);
	}

}
