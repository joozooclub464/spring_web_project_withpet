package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.PlayPlaceDaoMybatis;
import mybatis.PlayPlace;

@Controller
@RequestMapping("/play")
public class PlayPlaceController {
	@Autowired
	PlayPlaceDaoMybatis dao;

	@RequestMapping("/regist")
	public String regist(HttpSession session, PlayPlace playPlace, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 놀이시설목록을 생성할 수 있습니다!";
		String url = "list";
		
		try {
			if (id.equals("admin")) {
			if (dao.insert(playPlace) > 0) {
				msg = "놀이시설을 성공적으로 등록하였습니다.";
				url="list?playid="+playPlace.getPlayid();
			} else {
				msg = "놀이시설을 등록하는데 실패하였습니다.";
			}
		}
		} catch(DataIntegrityViolationException e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
			 msg = "놀이시설 등록 실패. 다시 입력하세요.";
			 url = "registForm";
		}

		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("pictureimgForm")
	public String pictureimgForm(int pic, Model model) {
		model.addAttribute("pic", pic);
		return "/single/pictureimgForm";
	}

	@RequestMapping("/pictureimg")
	public String pictureimg(MultipartHttpServletRequest request, int pic, PlayPlace playPlace, Model model) {
		String uploadpath = request.getServletContext().getRealPath("/img");
		MultipartFile multiFile = request.getFile("uploadpic");
		File file = new File(uploadpath, multiFile.getOriginalFilename());
		String filename = multiFile.getOriginalFilename();
		model.addAttribute("filename", filename);
		model.addAttribute("pic", pic);
		return "/single/pictureimg";
	}

	/* ========ssong==================== */
	@RequestMapping("/list")
	public String list(int playid, Model model) { /*
										 * 리스트는 값 보낼 필요 없이(걸러낼 필요 없다 ex.id로) 리스트를 받아오기만 하면 되니까 Model model로 넣어줬음.(model로
										 * map처럼 값 받아옴)
										 */
		List<PlayPlace> list = dao.list(playid); // dao list로 가서
		model.addAttribute("list", list); // "list"란 이름으로 list를 저장하고 그걸 model로 map처럼 "/play/list" 여기로 보냄
		model.addAttribute("playid",playid);
		return "/play/list";
	}

	@RequestMapping("/update")
	public String update(HttpSession session, PlayPlace playPlace, Model model) { // 세션에 저장된 id 가져오려고 HttpSession
																					// session 사용
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 놀이시설목록을 수정할 수 있습니다!";
		String url = "list?playid="+playPlace.getPlayid();
		if (id.equals("admin")) {
			if (dao.update(playPlace) > 0) {
				msg = "놀이시설을 성공적으로 수정하였습니다.";
			} else {
				msg = "놀이시설을 수정하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int p_num, Model model) {
		PlayPlace playPlace = dao.selectOne(p_num); // selectOne : p_num 이랑 일치하는 한 줄만 가져오는것.
		model.addAttribute("playPlace", playPlace);
		return "/play/updateForm";
	}

	@RequestMapping("/delete")
	public String delete(HttpSession session, int p_num, Model model) { // 리스트에서 바로 삭제 링크를 걸었으므로 deleteForm 필요 없음.
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 놀이시설목록을 삭제할 수 있습니다!";
		String url = "list?playid=1";
		if (id.equals("admin")) {
			if (dao.delete(p_num) > 0) { // p_num의 정보를 가지고 있는 열 하나만 삭제
				msg = "놀이시설을 성공적으로 삭제하였습니다.";
			} else {
				msg = "놀이시설을 삭제하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/info")
	public String info(int p_num, Model model) {
		PlayPlace playPlace = dao.selectOne(p_num); // 게시물 조회
		model.addAttribute("playPlace", playPlace);
		return "/play/info";
	}

}
