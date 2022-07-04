package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.C_ReviewDaoMybatis;
import dao.H_ReviewDaoMybatis;
import dao.HotelDaoMybatis;
import dao.MemberDaoMybatis;
import dao.ReserveClinicDaoMybatis;
import dao.ReserveHotelDaoMybatis;
import mybatis.C_Review;
import mybatis.H_Review;
import mybatis.Hotel;
import mybatis.Member;
import mybatis.ReserveHotel;

@Controller
@RequestMapping("/reserveHotel")
public class ReserveHotelController {
	@Autowired
	ReserveHotelDaoMybatis dao;
	@Autowired
	ReserveClinicDaoMybatis rcDao;
	@Autowired
	HotelDaoMybatis hDao;
	@Autowired
	MemberDaoMybatis mDao;
	@Autowired
	H_ReviewDaoMybatis h_rvDao;
	@Autowired
	C_ReviewDaoMybatis c_rvDao;

	@RequestMapping("/listreview")
	public String list1(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<H_Review> list = h_rvDao.id_h_review_by_id(id);
		List<C_Review> c_rv_list = c_rvDao.id_c_review_by_id(id);
		int h_rv_count = h_rvDao.h_rv_count(id);
		System.out.println(list);
		System.out.println(c_rv_list);
		Member member = mDao.selectOne(id);
		int count = dao.count(id);
		int rcCount = rcDao.count(id);
		int phCount = dao.pastCount(id);
		int pcCount = rcDao.pastCount(id);
		model.addAttribute("member", member);
		model.addAttribute("rhCount", count);
		model.addAttribute("rcCount", rcCount);
		model.addAttribute("pcCount", pcCount);
		model.addAttribute("phCount", phCount);
		model.addAttribute("h_reviewList", list);
		model.addAttribute("h_rv_count", h_rv_count);
		model.addAttribute("c_reviewList", c_rv_list);
		return "/member/myPage";
	}

	@RequestMapping("/reviewform")
	public String reviewForm(int h_num, HttpSession session, Model model) {
		// System.out.println(h_num);
		// String id = (String) session.getAttribute("id");
		// Member member = mDao.selectOne(id);
		System.out.println(h_num);
		Hotel hotel = hDao.selectOne(h_num);
		H_Review review = new H_Review();
		review.setId((String) session.getAttribute("id"));
		review.setH_num(hotel.getH_num());
		model.addAttribute("review", review);
		model.addAttribute("hotel", hotel);
		return "/single/review_form";
	}

	@RequestMapping("/review")
	public String review(H_Review review, Model model) {
		System.out.println(review);
		String msg = "������ �����Ͽ����ϴ�.";
		String url = "review_form";
		if (h_rvDao.h_insert(review)) {
			msg = "���� �ۼ��� �Ϸ�Ǿ����ϴ�.";
			url = "list";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		System.out.println(review);
		return "/alert";
	}

	@RequestMapping("/reserveForm")
	public String reserveForm(HttpSession session, int h_num, Model model) {
		String id = (String) session.getAttribute("id");
		Hotel hotel = hDao.selectOne(h_num);
		Member member = mDao.selectOne(id);
		model.addAttribute("member", member);
		model.addAttribute("hotel", hotel);
		return "/single/HreserveForm";
	}

	@RequestMapping("/reserve")
	public String reserve(ReserveHotel reserveHotel, Model model) {
		System.out.println(reserveHotel);
		String msg = "������ �����Ͽ����ϴ�.";
		String url = "reserveForm";
		int rh_num = dao.insert(reserveHotel);
		if (rh_num > 0) {
			msg = "������ �Ϸ�Ǿ����ϴ�.";
			url = "detail?rh_num=" + rh_num;
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/cancel")
	public String cancel(HttpSession session, int rh_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "ȸ������ ���̵�� ����� ȣ���� �ƴմϴ�.";
		String url = "list";
		if (id.equals(dao.selectOne(rh_num).getId())) {
			if (dao.delete(rh_num) > 0) {
				msg = "������ ����߽��ϴ�.";
			} else {
				msg = "������ ����ϴµ� �����߽��ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/editForm")
	public String editForm(int rh_num, Model model) {
		ReserveHotel reserveHotel = dao.selectOne(rh_num);
		model.addAttribute("reserveHotel", reserveHotel);
		return "/single/HeditForm";
	}

	@RequestMapping("/edit")
	public String edit(HttpSession session, int rh_num, ReserveHotel reserveHotel, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "ȸ������ ���̵�� ����� ȣ���� �ƴմϴ�.";
		String url = "list";
		if (id.equals(dao.selectOne(rh_num).getId())) {
			if (dao.update(reserveHotel) > 0) {
				msg = "������ ���������� �����Ͽ����ϴ�.";
				url = "detail?rh_num=" + rh_num;
			} else {
				msg = "������ �����ϴµ� �����Ͽ����ϴ�.";
				url = "detail?rh_num=" + rh_num;
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<ReserveHotel> list = dao.list(id);
		Member member = mDao.selectOne(id);
		int count = dao.count(id);
		int rcCount = rcDao.count(id);
		int phCount = dao.pastCount(id);
		int pcCount = rcDao.pastCount(id);
		model.addAttribute("member", member);
		model.addAttribute("rhList", list);
		model.addAttribute("rhCount", count);
		model.addAttribute("rcCount", rcCount);
		model.addAttribute("pcCount", pcCount);
		model.addAttribute("phCount", phCount);
		return "/member/myPage";
	}

	@RequestMapping("/detail")
	public String detail(int rh_num, Model model) {
		ReserveHotel reserveHotel = dao.selectOne(rh_num); // �Խù� ��ȸ
		model.addAttribute("reserveHotel", reserveHotel);
		return "/single/Hdetail";
	}
}
