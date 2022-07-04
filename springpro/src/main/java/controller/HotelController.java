package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.H_ReviewDaoMybatis;
import dao.HotelDaoMybatis;
import mybatis.H_Review;
import mybatis.Hotel;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	@Autowired
	HotelDaoMybatis dao;
	@Autowired
	H_ReviewDaoMybatis h_rvDao;

	@RequestMapping("/regist")
	public String regist(HttpSession session, Hotel hotel, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ������ �� �ֽ��ϴ�!";
		String url = "list";
		try {
			if (id.equals("admin")) {
				if (dao.insert(hotel) > 0) {
					msg = "ȣ���� ���������� ����Ͽ����ϴ�.";
				} else {
					msg = "ȣ���� ����ϴµ� �����Ͽ����ϴ�.";
					url = "regist";
				}
			}
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
			msg = "�ʼ� �׸��� �߸� �Է� �Ǿ����ϴ�. �ٽ� �õ��� �ּ���.";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/delete")
	public String delete(HttpSession session, int h_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if (id.equals("admin")) {
			if (dao.delete(h_num) > 0) {
				msg = "ȣ���� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "ȣ���� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int h_num, Model model) {
		Hotel hotel = dao.selectOne(h_num);
		model.addAttribute("hotel", hotel);
		return "/hotel/updateForm";
	}

	@RequestMapping("/update")
	public String update(HttpSession session, Hotel hotel, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		try {
			if (id.equals("admin")) {
				if (dao.update(hotel) > 0) {
					msg = "ȣ�������� ���������� �����Ͽ����ϴ�.";
				} else {
					msg = "ȣ�������� �����ϴµ� �����Ͽ����ϴ�.";
				}

			}
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
			msg = "�ʼ� �׸��� �߸� �Է� �Ǿ����ϴ�. �ٽ� �õ��� �ּ���.";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		List<Hotel> list = dao.list();
		model.addAttribute("list", list);
		return "/hotel/list";
	}

	@RequestMapping("/info")
	public String info(int h_num, Model model) {
		Hotel hotel = dao.selectOne(h_num); // �Խù� ��ȸ
		List<H_Review> h_review = h_rvDao.h_list(h_num);
		model.addAttribute("hotel", hotel);
		model.addAttribute("h_review", h_review);
		return "/hotel/info";
	}

	@RequestMapping("/pictureimg")
	public String pictureimg(MultipartHttpServletRequest request, Hotel hotel, Model model) {
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
