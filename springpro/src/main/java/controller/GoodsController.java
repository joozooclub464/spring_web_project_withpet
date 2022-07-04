package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.GoodsDaoMybatis;
import mybatis.Goods;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	@Autowired
	GoodsDaoMybatis dao;

	@RequestMapping("/regist")
	public String regist(HttpSession session, Goods goods, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 상품목록을 생성할 수 있습니다!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.insert(goods) > 0) {
				msg = "상품을 성공적으로 등록하였습니다.";
			} else {
				msg = "상품을 등록하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(Model model) { 
		List<Goods> list = dao.list();
		model.addAttribute("list", list);
		return "/goods/list";
	}
	
	@RequestMapping("/update")
	public String update(HttpSession session, Goods goods, Model model) { //세션에 저장된 id 가져오려고 HttpSession session 사용 
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 상품목록을 수정할 수 있습니다!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.update(goods) > 0) {
				msg = "상품을 성공적으로 수정하였습니다.";
			} else {
				msg = "상품을 수정하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
	
	
	@RequestMapping("/updateForm")
	public String updateForm(int gbsNum, Model model) {
		Goods goods = dao.selectOne(gbsNum); //selectOne : gbsNum 이랑 일치하는 한 줄만 가져오는것.
		model.addAttribute("goods", goods);
		return "/goods/updateForm";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpSession session, int gbsNum, Model model) { //리스트에서 바로 삭제 링크를 걸었으므로 deleteForm 필요 없음.
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 상품목록을 삭제할 수 있습니다!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.delete(gbsNum) > 0) { 
				msg = "상품을 성공적으로 삭제하였습니다.";
			} else {
				msg = "상품을 삭제하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
	
	@RequestMapping("/info")
	public String info(int gbsNum, Model model) {
		Goods goods = dao.selectOne(gbsNum); //상품 조회
		model.addAttribute("goods",goods);
		return "/goods/info";
	}
	
	@RequestMapping("/pictureimg")
	public String pictureimg(MultipartHttpServletRequest request, Goods goods, Model model) {
		String uploadpath = request.getServletContext().getRealPath("/img");
		MultipartFile multiFile = request.getFile("uploadpic");
		String filename = multiFile.getOriginalFilename();
		if (!multiFile.isEmpty()) {
			File file = new File(uploadpath, filename);
			try {
				multiFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("filename", filename);
		return "/single/pictureimg";
	}


}
