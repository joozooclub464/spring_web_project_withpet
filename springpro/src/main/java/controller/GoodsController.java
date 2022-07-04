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
		String msg = "�����ڸ� ��ǰ����� ������ �� �ֽ��ϴ�!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.insert(goods) > 0) {
				msg = "��ǰ�� ���������� ����Ͽ����ϴ�.";
			} else {
				msg = "��ǰ�� ����ϴµ� �����Ͽ����ϴ�.";
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
	public String update(HttpSession session, Goods goods, Model model) { //���ǿ� ����� id ���������� HttpSession session ��� 
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ��ǰ����� ������ �� �ֽ��ϴ�!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.update(goods) > 0) {
				msg = "��ǰ�� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "��ǰ�� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
	
	
	@RequestMapping("/updateForm")
	public String updateForm(int gbsNum, Model model) {
		Goods goods = dao.selectOne(gbsNum); //selectOne : gbsNum �̶� ��ġ�ϴ� �� �ٸ� �������°�.
		model.addAttribute("goods", goods);
		return "/goods/updateForm";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpSession session, int gbsNum, Model model) { //����Ʈ���� �ٷ� ���� ��ũ�� �ɾ����Ƿ� deleteForm �ʿ� ����.
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ��ǰ����� ������ �� �ֽ��ϴ�!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.delete(gbsNum) > 0) { 
				msg = "��ǰ�� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "��ǰ�� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
	
	@RequestMapping("/info")
	public String info(int gbsNum, Model model) {
		Goods goods = dao.selectOne(gbsNum); //��ǰ ��ȸ
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
