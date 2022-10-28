package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.C_ReviewDaoMybatis;
import dao.ClinicDaoMybatis;
import dao.MemberDaoMybatis;
import dao.ReserveClinicDaoMybatis;
import dao.ReserveHotelDaoMybatis;
import mybatis.C_Review;
import mybatis.Clinic;
import mybatis.Member;
import mybatis.ReserveClinic;
import mybatis.ReserveHotel;

@Controller
@RequestMapping("/reserveClinic")
public class ReserveClinicController {
	@Autowired
	ReserveClinicDaoMybatis dao;
	@Autowired
	ReserveHotelDaoMybatis rhDao;
	@Autowired
	ClinicDaoMybatis cDao;
	@Autowired
	MemberDaoMybatis mDao;
	@Autowired
	C_ReviewDaoMybatis c_rvDao;

	@RequestMapping("/reviewform")
	public String reviewForm(int c_num, HttpSession session, Model model) {
		// System.out.println(c_num);
		// String id = (String) session.getAttribute("id");
		// Member member = mDao.selectOne(id);
		System.out.println(c_num);
		Clinic clinic = cDao.selectOne(c_num);
		C_Review review = new C_Review();
		review.setId((String) session.getAttribute("id"));
		review.setC_num(clinic.getC_num());
		model.addAttribute("review", review);
		model.addAttribute("clinic", clinic);
		return "/single/Creview_form";
	}

	@RequestMapping("/review")
	public String review(C_Review review, Model model) {
		System.out.println(review);
		String msg = "���� �ۼ��� �����Ͽ����ϴ�.";
		String url = "review_form";
		if (c_rvDao.c_insert(review)) {
			msg = "���� �ۼ��� �Ϸ�Ǿ����ϴ�.";
			url = "list";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		System.out.println(review);
		return "/alert";
	}
//	review list
//	@RequestMapping("/list")
//	public String list(Model model) {
//		List<Clinic> list = dao.list();
//		model.addAttribute("list", list);
//		return "/clinic/list";
//	}
	@RequestMapping("/reviewList")
	public String reviewList(int c_num,  Model model) {
		List<C_Review> reviewlist = c_rvDao.review_list(c_num);
		model.addAttribute("reviewlist", reviewlist);
		return "/single/CreviewList";
	}	
//	test��

	@RequestMapping("/reserveForm")
	public String reserveForm(HttpSession session, int c_num, Model model) {
		String id = (String) session.getAttribute("id");
		Clinic clinic = cDao.selectOne(c_num);
		Member member = mDao.selectOne(id);
		model.addAttribute("member", member);
		model.addAttribute("clinic", clinic);
		return "/single/CreserveForm";
	}

	@RequestMapping("/reserve")
	public String reserve(ReserveClinic reserveClinic, Model model) {
		System.out.println(reserveClinic);
		String msg = "������ �����Ͽ����ϴ�.";
		String url = "reserveForm";
		try {
			int rc_num = dao.insert(reserveClinic);
			if (rc_num > 0) {
				msg = "������ �Ϸ�Ǿ����ϴ�.";
				url = "detail?rc_num=" + rc_num;
			}
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
			msg = "�ʼ� �׸��� �߸� �Է� �Ǿ����ϴ�. �ٽ� �õ��� �ּ���.";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/cancel")
	public String cancel(HttpSession session, int rc_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ��������� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if (id.equals(dao.selectOne(rc_num).getId())) {
			if (dao.delete(rc_num) > 0) {
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
	public String editForm(int rc_num, Model model) {
		ReserveClinic reserveClinic = dao.selectOne(rc_num);
		model.addAttribute("reserveClinic", reserveClinic);
		return "/single/CeditForm";
	}

	@RequestMapping("/edit")
	public String edit(HttpSession session, int rc_num, ReserveClinic reserveClinic, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "ȸ������ ���̵�� ����� ������ �ƴմϴ�.";
		String url = "list";
		if (id.equals(dao.selectOne(rc_num).getId())) {
			if (dao.update(reserveClinic) > 0) {
				msg = "������ ���������� �����Ͽ����ϴ�.";
				url = "detail?rc_num=" + rc_num;
			} else {
				msg = "������ �����ϴµ� �����Ͽ����ϴ�.";
				url = "detail?rc_num=" + rc_num;
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<ReserveClinic> list = dao.list(id);
//		List<ReserveHotel> prHotel = rhDao.pastList(id);
		List<ReserveClinic> prClinic = dao.pastList(id);
		Member member = mDao.selectOne(id);
		int count = dao.count(id);
		int rhCount = rhDao.count(id);
		int phCount = rhDao.pastCount(id);
		int pcCount = dao.pastCount(id);
		model.addAttribute("member", member);
		model.addAttribute("rcList", list);
		model.addAttribute("rcCount", count);
		model.addAttribute("rhCount", rhCount);
//		model.addAttribute("prHotel", prHotel);
		model.addAttribute("prClinic", prClinic);
		model.addAttribute("pcCount", pcCount);
		model.addAttribute("phCount", phCount);
		return "/member/myPage";
	}

	@RequestMapping("/pastList")
	public String pastList(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<ReserveClinic> pcList = dao.pastList(id);
		List<ReserveHotel> phList = rhDao.pastList(id);
		Member member = mDao.selectOne(id);
		int count = dao.count(id);
		int rhCount = rhDao.count(id);
		int phCount = rhDao.pastCount(id);
		int pcCount = dao.pastCount(id);
		model.addAttribute("member", member);
		model.addAttribute("rcCount", count);
		model.addAttribute("rhCount", rhCount);
		model.addAttribute("pcList", pcList);
		model.addAttribute("phList", phList);
		model.addAttribute("pcCount", pcCount);
		model.addAttribute("phCount", phCount);
		return "/member/myPage";
	}

	@RequestMapping("/detail")
	public String detail(int rc_num, Model model) {
		ReserveClinic reserveClinic = dao.selectOne(rc_num); // �Խù� ��ȸ
		model.addAttribute("reserveClinic", reserveClinic);
		return "/single/Cdetail";
	}
}
