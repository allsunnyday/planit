package com.earth.planit.web;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.ReviewService;
import com.earth.planit.service.impl.FileUtils;

@Controller
public class ReviewController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;

	@Value("${REVIEW_PAGE_SIZE}")
	private int pageSize;
	// 블락페이지
	@Value("${REVIEW_PAGE_SIZE}")
	private int blockPage;

	// 리뷰 리스트로 이동
	@RequestMapping("/planit/review/ReviewList.it")
	public String reviewList(@RequestParam Map map, 
							Model model, 
							HttpServletRequest req, // 물리적 경로를 얻기 위해서 
							HttpServletResponse resp,
							@RequestParam(required = false, defaultValue = "1") int nowPage) throws Exception {

		if(map.get("areacode")!=null) {
			System.out.println(map.get("areacode")+" 지역을 선택했습니다."+map.get("areacodeKor"));
			System.out.println(map.get("keyword")+" 키워드를 입력했습니다."+map.get("keyword").toString().length());
			model.addAttribute("areacode", map.get("areacode"));
			model.addAttribute("keyword", map.get("keyword"));
			model.addAttribute("areacodeKor", map.get("areacodeKor"));
		}
		
		// 페이징 로직 시작
		// 전체 리뷰수
		int totalReviewCount = reviewService.getReviewListTotal(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil(((double) totalReviewCount / pageSize));
		// 시작 끝 rownum 구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		map.put("start", start);
		map.put("end", end);

		// 리뷰 리스트를 가지고 온다.
		List<Map> list = reviewService.selectReviewList(map);

		// 페이징 스트링
		String pagingString = CommonUtil.pagingBootStrapStyle(totalReviewCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/planit/review/ReviewList.it?");

		model.addAttribute("pagingString", pagingString);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("list", list);
		return "tourinfo/reviewpick/ReviewList.theme";
	}

	
	
	
	//리뷰 작성 
	@RequestMapping("/review/myreview/Write.it")
	public String reviewDetail(@RequestParam Map map, // review_id, planner_id
			Model model) throws Exception {
		// write는 planner에서 오는 값이기도 하다
		// 여행이 시작하고 플래너를 처음 작성할 떄에는 review_id가 없다
		// 작성 후 수정할 떄에는 review_id가 있다.
		// 따라서 판단이 필요하다
		/*
		 * Map planner = reviewService.selectPlannerOne(map); // String totalRoute =
		 * planner.get("ROUTE").toString(); String dayRoute[] = totalRoute.split("@");
		 * // [0]1:12:126508:경복궁:한복대여:한복대여2만원:0#1:12:126512:광화문:교보문고:책사기:0#1:32:2504463:
		 * L7명동:::1
		 */
		// 몇일차를 뿌려줄것인지 선택
		int day = 1;
		/* if(map.get("review_id")!=null) { */
		ReviewDTO record = reviewService.selectReviewOne(map);
		day = Integer.parseInt(record.getSeries().toString()) - 1;
		model.addAttribute("review", record);

		/* } */
		// dayRoute[day]=
		// 1#1:12:126508:경복궁:한복대여:한복대여2만원:0#1:12:126512:광화문:교보문고:책사기:0#1:32:2504463:L7명동:::1
//		String route[] = dayRoute[day].split("#");
		String route[] = record.getRoute().split("#");
		System.out.println("route[0]" + route[0]);
		List<Map> oneRoute = new Vector();
		for (int i = 1; i < route.length; i++) { // i로 review의 사용자 글/그림을 가지고올수있다.
			Map rmap = new HashMap<>();
			String items[] = route[i].split(":");
			System.out.println(i + "번째 " + items.length + "개");
			rmap.put("areacode", items[0]); // 지역코드
			rmap.put("contenttype", items[1]);
			rmap.put("contentid", items[2]);
			rmap.put("title", items[3]); // 관광지이름
			rmap.put("todo", items[4]); // 할일
			rmap.put("todomemo", items[5]); // 할일 메모
			rmap.put("stayNY", items[6]); // 숙박인지 여부
			// ContentDTO dto = TourApiUtils.getdetailCommon(items[1], items[2]);
			// 관광데이터 가지고 오기
			// rmap.put("overview", dto.getOverview());
			// System.out.println(dto.getOverview());
			// 주소읽어오기

			ContentDTO dto = reviewService.selectContent(rmap);
			rmap.put("addr1", dto.getAddr1());
			rmap.put("firstimage2", dto.getFirstimage2());
			//
			oneRoute.add(rmap);
		}

		int totalReview = reviewService.getTotalReviewCount(map);
		model.addAttribute("totalReview", totalReview);
		model.addAttribute("day", day + 1);
		// model.addAttribute("planner", planner);
		model.addAttribute("oneRoute", JSONArray.toJSONString(oneRoute));
		System.out.println(JSONArray.toJSONString(oneRoute));
		return "review/myreview/WriteReview.theme";
	}

	// 리뷰 보기 페이지
	@RequestMapping("/planit/review/ReviewView.it")
	public String reviewView(@RequestParam Map map, // review_id=값
			Model model) throws Exception {

		// 하나의 리뷰를 화면에 보여준다.
		ReviewDTO review = reviewService.selectReviewOne(map);
		// 시리즈로 접근했을 시에 review_id가 없기 때문에 
		map.put("review_id", review.getReview_id());
		
		// --- route 분석 로직 ----//
		// 1:12:126508:경복궁:한복대여:한복대여2만원:0#1:12:126512:광화문:교보문고:책사기:0#1:32:2504463:L7명동:::1
		String beforeParsing = review.getRoute();
		System.out.println(beforeParsing);
		// route에 해당하는 컨텐트츠 객체를 가지고 오는게 중요하다 (overview읽어오기?)
		String schedule[] = beforeParsing.split("#"); // 1:12:126508:경복궁:한복대여:한복대여2만원:0
		System.out.println("갯수 예상(2) == " + schedule.length);
		// oneRoute의 사이즈 == 관광DTO의 개수
		List<Map> oneRoute = new Vector();
		for (int i = 1; i < schedule.length; i++) { // i로 review의 사용자 글/그림을 가지고올수있다. i=0일때는 일수를 가지고 있
			Map rmap = new HashMap<>();
			String items[] = schedule[i].split(":");
			System.out.println(i + "번째 " + items.length + "개");
			rmap.put("areacode", items[0]);
			rmap.put("contenttype", items[1]);
			rmap.put("contentid", items[2]);
			rmap.put("title", items[3]);
			rmap.put("todo", items[4]);
			rmap.put("todomemo", items[5]);
			rmap.put("stayNY", items[6]);

			// review_content가져오기
			map.put("route_index", i - 1);
			map.put("contentid", items[2]);
			Map reviewContent = reviewService.selectReviewContent(map);

			rmap.put("content", reviewContent.get("CONTENT"));
			// rmap.put("image",
			// reviewContent.get("IMAGE")==null?"no-image":reviewContent.get("IMAGE").toString().replace("<*>",
			// "&"));
			if (reviewContent.get("IMAGE") == null) {
				rmap.put("image", "no-image");
			} else {
				String str[] = reviewContent.get("IMAGE").toString().replace("<*>", "&").split("&");
				List image = new Vector<>();
				for (String s : str) {
					image.add(s);
				}
				rmap.put("image", image);
			}
			ContentDTO dto = TourApiUtils.getdetailCommon(items[1], items[2]);
			// 관광데이터 가지고 오기
			rmap.put("overview",
					dto.getOverview().length() > 300 ? dto.getOverview().substring(0, 300) + "..." : dto.getOverview());
			rmap.put("firstimage2", dto.getFirstimage2());
			rmap.put("addr1", dto.getAddr1());
			// System.out.println(dto.getOverview());
			oneRoute.add(rmap);
		}

		// 데이터 저장
		// planner_id로 리뷰시리즈 개수를 가지고온다. 
		map.put("planner_id", review.getPlanner_id());
		int series = reviewService.getTotalReviewCount(map);
		System.out.println("[ series 시리즈는 1부터 시작한다.]="+series);
		model.addAttribute("series", series);
		model.addAttribute("planner_id", map.get("planner_id"));
		model.addAttribute("day", schedule[0]);
		model.addAttribute("review", review);// review는 전체적인 내용이 담겨있음
		model.addAttribute("oneRoute", oneRoute);
		return "tourinfo/reviewpick/ReviewView.theme";
	}

	// 리뷰 하루 일정 중에 하나의 코스에 대해서 보여준다.
	@RequestMapping("/riveiw/write/OneSpot.it")
	public String writeOneReview(@RequestParam Map map, // review_id , route_index
			Model model, HttpServletRequest req) throws Exception {

		// 잘넘어오는지 체크
		System.out.println("review_id=" + map.get("review_id") + " route_index=" + map.get("route_index") + "contentid="
				+ map.get("contentid"));
		// review_content와 content를 조인해서 가지고 오기
		Map reviewContent = reviewService.selectReviewContent(map);
		// map에 reviewContent에 관한 상세를 가지고 오기
		/*
		 * ContentDTO dto =
		 * TourApiUtils.getdetailCommon(reviewContent.get("CONTENTTYPE").toString(),
		 * reviewContent.get("CONTENTID").toString()); reviewContent.put("OVERVIEW",
		 * dto.getOverview());
		 */
		Map imageMap = new HashMap();
		// 이미지가 여러개 라면
		String phisicalPath = req.getServletContext().getRealPath("/Upload/Review");
		int imageCount = 0;
		if (reviewContent.get("IMAGE") != null) {
			System.out.println(reviewContent.get("IMAGE"));
			String[] images = reviewContent.get("IMAGE").toString().trim().replace("<*>", "&").split("&");
			for (String img : images) {
				System.out.println(img);
				// ring name = (phisicalPath+File.separator+img);
				imageMap.put("" + imageCount++, img);
			}
		}
		// imageMap.put("imageCount", imageCount);

		model.addAttribute("imageMap", imageMap);
		model.addAttribute("reviewContent", reviewContent);
		return "review/myreview/WriteOneSpot.theme";
	}

	//////////////////////////////////////// ajax
	@ResponseBody
	@RequestMapping(value = "/review/write/UploadReview.it", method = RequestMethod.POST)
	public String uploadReview(@RequestParam Map map, //
			MultipartHttpServletRequest mreq, HttpServletResponse resp) throws Exception {
		System.out.println("content=>>>" + map.get("content") + "\r\n map.size>>" + map.size());
		System.out.println(map.get("re_co_id"));

		StringBuffer fileNames = new StringBuffer();
		if (map.get("preimage") != null) {
			fileNames.append(map.get("preimage"));
		}
		// 업로드할 폴더의 물리적 경로
		String phisicalPath = mreq.getServletContext().getRealPath("/Upload/Review");
		// muitiform객체 얻기

		Iterator<String> it = mreq.getFileNames();
		while (it.hasNext()) {
			MultipartFile upload = mreq.getFile(it.next());
			// 파일이름 중복체크
			String originname = upload.getOriginalFilename();
			String filename = FileUtils.getNewFileName(phisicalPath, originname);
			System.out.println("저장될 파일 이름 -" + filename);
			// 파일객체 생성
			File file = new File(phisicalPath + File.separator + filename);
			// 업로드 처리
			upload.transferTo(file);
			// 파일이름을 저장
			fileNames.append(filename + "<*>");
		}
		System.out.println("최종 저장될 스트링은? = " + fileNames);
		/// ajax로 왜 내용이 넘어오지 않는지..확인이 필요 !! !
		map.put("image", fileNames.toString());
		int affected = reviewService.updateReview(map);
		System.out.println("제대로 되었는지?=" + affected);
		return "success"; // 리턴으로 WriteReview를 보내준다.
	}

	// rating을 주었는지 판단
	@ResponseBody
	@RequestMapping(value = "/Planit/Review/Rating/hasRating.it", produces = "text/plain; charset=UTF-8")
	public String hasRating(@RequestParam Map map, HttpSession session) throws Exception {
		//
		System.out.println(map.get("review_id"));
		map.put("id", session.getAttribute("id"));

		// 있는지 확인
		int hasRating = reviewService.hasRating(map);

		return (hasRating == 1) ? "Y" : "N";
	}

	// comment 작성
	@ResponseBody
	@RequestMapping(value = "/planit/review/comment/WriteComment.it", produces = "text/plain; charset=UTF-8")
	public String writeComment(@RequestParam Map map) throws Exception {
		// data가 잘 넘어오는지 확인
		System.out.println(map.get("id") + "/" + map.get("review_id"));
		// 원본글 작성
		int affected = reviewService.insertComment(map);
		if (affected == 1)
			return "success";
		else
			return "fail";
	}

	// comment 리스트
	@ResponseBody
	@RequestMapping(value = "/planit/review/comment/List.it", produces = "text/plain; charset=UTF-8")
	public String getCommentList(@RequestParam Map map) throws Exception {
		// data가 잘 넘어오는지 확인
		System.out.println(map.get("review_id"));
		// 리뷰 리스트 가지고 오기
		List<Map> comments = reviewService.selectCommentList(map);
		// 날짜데이터를 변경하기
		for (Map comment : comments) {
			comment.put("POSTDATE", comment.get("POSTDATE").toString().substring(0, 10));
		}
		System.out.println(JSONArray.toJSONString(comments));
		return JSONArray.toJSONString(comments);
	}

	@ResponseBody
	@RequestMapping(value = "/planit/review/LikedreView.it", produces = "text/plain; charset=UTF-8")
	public String userLikedContent(@RequestParam Map map, HttpSession session) throws Exception {

		System.out.println(map.get("review_id") + " " + session.getAttribute("id"));
		map.put("id", session.getAttribute("id"));
//		//// 이미  좋아요한 것인지 판단
		int isAlreadyLiked = reviewService.alreadyLikeReview(map);

		if (isAlreadyLiked != 0) {
			// 이미 사용자가 좋아요를 눌렀다.
			return "already";
		}
//		// 사용자가 아직 좋아요 한 것이 아니라면
		int affected = reviewService.insertLikedReview(map);

		return "success";
	}

//////////////////////////////////포토북
	@RequestMapping("/photobook/step1/selectdesign.it")
	public String selectbook(@RequestParam Map map, Model model) throws Exception {
		// 사용자의 리뷰아이디가 넘어온다.
		System.out.println("디자인 선택하러 가는 리뷰 아이디:" + map.get("review_id"));

		return "review/photobook/SelectBook.theme";
	}

	@RequestMapping("/photobook/step2/Preview.it")
	public String previewBook(@RequestParam Map map, Model model) throws Exception {
		System.out.println("리뷰아이디)" + map.get("review_id") + " 선택한 포토북)" + map.get("name"));
		// review_id에 해당하는 일정을 불러온다.
		List<Map> reviewList = reviewService.selectReviewContentList(map);
		// int totalroute = reviewList.size();
		for (Map oneReview : reviewList) {
			// 하나의 관광지에 대한 이미지 분석
			if (oneReview.get("IMAGE") != null) {
				String[] images = oneReview.get("IMAGE").toString().trim().replace("<*>", "&").split("&");
				System.out.println("변경전  image" + oneReview.get("IMAGE") + "  이미지개수:" + images.length);
				// 이미지 개수에 해당하는 포토북을 가지고 온다.

				// 총 이미지 개수와 포토북이 표현할 수 있는 사진 레이아웃의 개수를 비교하여 maximum을 정한다.
				map.put("imagecount", images.length);
				Map layouts = reviewService.getPhotobookLayouts(map);
				for (int i = 0; i < images.length; i++) {
					layouts.put("LAYOUTS", layouts.get("LAYOUTS").toString().replace("BASIC" + i + ".jpg", images[i]));
				}
				oneReview.put("IMAGE", layouts.get("LAYOUTS"));
				System.out.println("변경한 후에 oneReview-IMAGE키에 저장된 값:" + oneReview.get("IMAGE"));
			} else {
				System.out.println("해당 일정에는 이미지가 없습니다.");
			}
		}
		
		
		model.addAttribute("listSize", reviewList.size());
		model.addAttribute("listMap", reviewList);
		return "review/photobook/PreviewBook.theme";
	}

	@RequestMapping(value = "/planit/photobook/download.it", method = RequestMethod.POST)
	public void download(@RequestParam Map map, ModelMap modelMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String imgData = request.getParameter("imgdata");
		System.out.println("이미지를 다운하기 위해 들어왔습니다.");
		imgData = imgData.replaceAll("data:image/png;base64,", "");

		byte[] file = Base64.decodeBase64(imgData);
		ByteArrayInputStream is = new ByteArrayInputStream(file);

		response.setContentType("image/png");
		response.setHeader("Content-Disposition", "attachment; filename=report.png");

		IOUtils.copy(is, response.getOutputStream());
		response.flushBuffer();

	}

	@ResponseBody
	@RequestMapping(value = "/planit/photobook/downloadByAjax.it", method = RequestMethod.POST,produces = "text/plain; charset=UTF-8")
	public String downloadPhotobookByAjax(@RequestParam Map map, 
			HttpServletRequest req, 
			HttpServletResponse resp,
			HttpSession session)
			throws Exception {
		
//		String binaryData = req.getParameter("imgdata0");
		int total  = Integer.parseInt(map.get("total").toString());
		String phisicalPath = req.getServletContext().getRealPath("/Upload/Review");
		String zipname = session.getAttribute("id").toString();
		File zip = new File(phisicalPath+File.separator+zipname+".zip");
		ZipOutputStream out = new ZipOutputStream(new FileOutputStream(zip));
		byte[] buf = new byte[1024];
		for (int i=0; i<total; i++) {
			String binaryData = map.get("imgdata"+i).toString();
			System.out.println("i)"+i);
			if (binaryData != null || binaryData != "") {
			
				FileOutputStream stream = null;
				
				//System.out.println("binary file " + binaryData);
				
				binaryData = binaryData.replaceAll("data:image/png;base64,", "");
				byte[] file = Base64.decodeBase64(binaryData);
				System.out.println("file :::::::: " + file + " || " + file.length);
				
				String fileName = "imgdata"+i;
				
				stream = new FileOutputStream(phisicalPath+File.separator + fileName + ".png");
				
				stream.write(file);
				stream.close();
				
				
				// zip파일에 추가하기
				FileInputStream in = new FileInputStream(phisicalPath+File.separator + fileName + ".png");
				out.putNextEntry(new ZipEntry(fileName + ".png"));
				 int len;
		            while ((len = in.read(buf)) > 0) {
		                out.write(buf, 0, len);
		            }
		        out.closeEntry();
		        in.close();
				System.out.println("파일 작성 완료");
			}
			
		}
		
		

		out.close();
		return zipname+".zip";
	}

	@RequestMapping("/planit/photobook/makeDownload.it")
	public String downloadComplete(@RequestParam String filename, Model model,HttpServletRequest req, HttpServletResponse resp)throws Exception{
		System.out.println("여기 왔지롱 filename:"+filename);
		model.addAttribute("filename",filename);
		//FileUtils.downloadForSpring(req, resp, "/Upload/Review", filename);
		return "review/photobook/DownloadBook.theme";
	}
	
	@RequestMapping("/download/book.it")
	public void downloadprocess(@RequestParam String filename,HttpServletRequest req, HttpServletResponse resp)throws Exception{
		System.out.println("여기 왔지롱2222222filename:"+filename);
		
		FileUtils.downloadForSpring(req, resp, "/Upload/Review", filename);
		//return "review/photobook/DownloadBook.theme";
	}
}
