package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.C_ReviewDaoMybatis;
import dao.ClinicDaoMybatis;
import dao.H_ReviewDaoMybatis;
import dao.HotelDaoMybatis;
import dao.MemberDaoMybatis;
import dao.PlayPlaceDaoMybatis;
import dao.ReserveClinicDaoMybatis;
import dao.ReserveHotelDaoMybatis;
import mybatis.Clinic;
import mybatis.Hotel;
import mybatis.Member;
import mybatis.PlayPlace;
import mybatis.ReserveClinic;
import mybatis.ReserveHotel;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	MemberDaoMybatis dao;
	@Autowired
	ReserveHotelDaoMybatis rhDao;
	@Autowired
	ReserveClinicDaoMybatis rcDao;
	@Autowired
	HotelDaoMybatis hDao;
	@Autowired
	ClinicDaoMybatis cDao;
	@Autowired
	PlayPlaceDaoMybatis pDao;
	@Autowired
	H_ReviewDaoMybatis h_rvDao;
	@Autowired
	C_ReviewDaoMybatis c_rvDao;

	@RequestMapping("/main")
	public String main(HttpSession session, RedirectAttributes rttr, int list_id) throws Throwable {
		if (list_id == 1) {
			List<PlayPlace> p_rank_list = pDao.rank_list();
			System.out.println(p_rank_list);
			rttr.addFlashAttribute("p_rank_list", p_rank_list);
		} else if (list_id == 2) {
			List<Clinic> c_rank_list = cDao.rank_list();
			System.out.println(c_rank_list);
			rttr.addFlashAttribute("c_rank_list", c_rank_list);
		} else {
			List<Hotel> h_rank_list = hDao.rank_list();
			System.out.println(h_rank_list);
			rttr.addFlashAttribute("h_rank_list", h_rank_list);
		}
		return "redirect:index";
	}

	@RequestMapping("/index")
	public String index() {
		return "single/main";
	}

	@RequestMapping("/join")
	public String join(@ModelAttribute Member member, String yy, String mm, String dd, Model model) throws Throwable {
		SimpleDateFormat joindate_format = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
		Date date = new Date();
		member.setBirthday(yy + mm + dd);
		member.setJoin_date(joindate_format.format(date));
		member.setMemlevel("welcome");

		String msg = "가입실패";
		String url = "joinForm";
		try {
			int num = dao.insert(member);
			if (num > 0) {
				msg = member.getName() + " 가입완료";
				url = "loginForm";
			}
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
			msg = "필수 항목이 잘못 입력 되었습니다. 다시 시도해 주세요.";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(name = "id", required = true) String id,
			@RequestParam(name = "pass", required = true) String pass, Model model, HttpSession session)
			throws Throwable {
		Member member = dao.selectOne(id);
		String msg = "아이디를 확인하세요";
		String url = "loginForm";
		if (member != null) {
			if (pass.equals(member.getPass())) {
				session.setAttribute("id", id);
				msg = member.getName() + "님이 로그인 하셨습니다.";
				url = "main?list_id=3";
			} else {
				msg = "비밀번호를 확인하세요.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session, Model model) throws Throwable {
		String id = (String) session.getAttribute("id");
		session.invalidate();
		String msg = id + "님이 로그아웃 되었습니다.";
		String url = "main?list_id=3";
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/alert";
	}

	@RequestMapping("/myPage")
	public String myPage(HttpSession session, Model model) throws Throwable {
		String id = (String) session.getAttribute("id");
		String msg = "";
		String url = "";
		if (id == null || id.trim().equals("")) {
			msg = "로그인이 필요합니다.";
			url = "loginForm";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else if (!id.equals("admin") && !id.equals(id)) {
			msg = "자신의 정보만 조회가 가능합니다.";
			url = "main?list_id=3";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else {
			Member member = dao.selectOne(id);
			int rcCount = rcDao.count(id);
			int rhCount = rhDao.count(id);
			int phCount = rhDao.pastCount(id);
			int pcCount = rcDao.pastCount(id);
			int h_rv_count = h_rvDao.h_rv_count(id);
			model.addAttribute("member", member);
			model.addAttribute("rcCount", rcCount);
			model.addAttribute("rhCount", rhCount);
			model.addAttribute("pcCount", pcCount);
			model.addAttribute("phCount", phCount);
			model.addAttribute("h_rv_count", h_rv_count);
			return "/member/myPage";
		}
	}

	@RequestMapping("/delete")
	public String delete(String id, String pass, HttpSession session, Model model) throws Throwable {
		String login = (String) session.getAttribute("id");
		String msg = null;
		String url = null;
		boolean opener = true;
		if (login == null || login.trim().equals("")) {
			msg = "로그인이 필요합니다.";
			url = "loginForm";
		} else if (!login.equals(id) && !login.equals("admin")) {
			msg = "본인만 탈퇴가 가능합니다.";
			url = "main?list_id=3";
		} else if (id.equals("admin")) {
			msg = "관리자는 탈퇴할 수 없습니다.";
			url = "main?list_id=3";
		} else {
			Member member = dao.selectOne(id);
			if (login.equals("admin") || pass.equals(member.getPass())) {
				int result = dao.delete(id);
				if (result > 0) {
					if (login.equals("admin")) {
						msg = id + "사용자를 강제 탈퇴 성공";
						url = "memberList";
					} else {
						msg = id + "님의 회원탈퇴 완료";
						url = "main?list_id=3";
						session.invalidate();
					}
				} else {
					msg = id + "님의 탈퇴 오류 발생.";
					if (id.equals("admin")) {
						url = "memberList";
					} else {
						url = "main?list_id=3";
					}
				}
			} else {
				opener = false;
				msg = id + "님의 비밀번호가 틀립니다.";
				url = "deleteForm?id=" + id;
			}
		}
		model.addAttribute("opener", opener);
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/single/delete";
	}

	@RequestMapping("/deleteForm")
	public String deleteForm(String id, Model model) throws Throwable {
		model.addAttribute("id", id);
		return "/single/deleteForm";
	}

	@RequestMapping("/password")
	public String password(String pass, String chgpass, Model model, HttpSession session) throws Throwable {
		String id = (String) session.getAttribute("id");
		boolean opener = false;
		String msg = null;
		String url = null;
		if (id == null || id.trim().equals("")) {
			opener = true;
			msg = "로그인하세요.";
			url = "loginForm";
		} else {
			Member member = dao.selectOne(id);
			if (pass.equals(member.getPass())) {
				if (dao.updatePass(id, chgpass) > 0) {
					msg = "비밀번호 변경 완료.";
					url = "myPage?id=" + id;
					opener = true;
				} else {
					msg = "비밀번호 변경시 오류 발생.";
					url = "passwordForm";
				}
			} else {
				msg = "비밀번호 오류. 확인하세요.";
				url = "passwordForm";
			}
		}
		model.addAttribute("opener", opener);
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/single/password";
	}

	@RequestMapping("/updateForm")
	public String updateForm(Model model, HttpSession session, String id) throws Throwable {
		String msg = "";
		String url = "";
		if (id == null || id.trim().equals("")) {
			msg = "로그인이 필요합니다.";
			url = "loginForm";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else if (!id.equals("admin") && !id.equals(id)) {
			msg = "자신의 정보만 수정이 가능합니다.";
			url = "myPage?id=" + id;
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else {
			Member member = dao.selectOne(id);
			model.addAttribute("member", member);
			return "/member/updateForm";
		}
	}

	@RequestMapping("/update")
	public String update(@ModelAttribute Member member, Model model) throws Throwable {
		String msg = null;
		String url = null;
		Member dbMem = dao.selectOne(member.getId());
		System.out.println(dbMem);
		System.out.println(member);
		if (!member.getId().equals("admin") && !member.getPass().equals(dbMem.getPass())) {
			msg = "비밀번호가 틀립니다. 확인 후 다시하세요.";
			url = "updateForm?id=" + member.getId();
		} else {
			if (dao.update(member) > 0) {
				msg = member.getId() + "님의 회원정보가 수정되었습니다.";
				url = "myPage?id=" + member.getId();
			} else {
				msg = member.getId() + "님의 회원정보 수정 실패.";
				url = "updateForm?id=" + member.getId();
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/memberList")
	public String memberList(HttpSession session, Model model) throws Throwable {

		String id = (String) session.getAttribute("id");
		String msg = "";
		String url = "";
		if (id == null || id.trim().equals("")) {

			msg = "관리자로 로그인하세요";
			url = "loginForm";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";

		} else if (!id.equals("admin")) {

			msg = "관리자만 가능한 거래입니다";
			url = "main?list_id=3";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";

		} else {
			List<Member> list = dao.list();
			model.addAttribute("list", list);
			return "/member/memberList";
		}
	}

	@RequestMapping("/pictureimg")
	public String pictureimg(MultipartHttpServletRequest request, Member member, Model model) {
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