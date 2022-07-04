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
		String msg = "�����ڸ� ���̽ü������ ������ �� �ֽ��ϴ�!";
		String url = "list";
		
		try {
			if (id.equals("admin")) {
			if (dao.insert(playPlace) > 0) {
				msg = "���̽ü��� ���������� ����Ͽ����ϴ�.";
				url="list?playid="+playPlace.getPlayid();
			} else {
				msg = "���̽ü��� ����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		} catch(DataIntegrityViolationException e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
			 msg = "���̽ü� ��� ����. �ٽ� �Է��ϼ���.";
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
										 * ����Ʈ�� �� ���� �ʿ� ����(�ɷ��� �ʿ� ���� ex.id��) ����Ʈ�� �޾ƿ��⸸ �ϸ� �Ǵϱ� Model model�� �־�����.(model��
										 * mapó�� �� �޾ƿ�)
										 */
		List<PlayPlace> list = dao.list(playid); // dao list�� ����
		model.addAttribute("list", list); // "list"�� �̸����� list�� �����ϰ� �װ� model�� mapó�� "/play/list" ����� ����
		model.addAttribute("playid",playid);
		return "/play/list";
	}

	@RequestMapping("/update")
	public String update(HttpSession session, PlayPlace playPlace, Model model) { // ���ǿ� ����� id ���������� HttpSession
																					// session ���
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ���̽ü������ ������ �� �ֽ��ϴ�!";
		String url = "list?playid="+playPlace.getPlayid();
		if (id.equals("admin")) {
			if (dao.update(playPlace) > 0) {
				msg = "���̽ü��� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "���̽ü��� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int p_num, Model model) {
		PlayPlace playPlace = dao.selectOne(p_num); // selectOne : p_num �̶� ��ġ�ϴ� �� �ٸ� �������°�.
		model.addAttribute("playPlace", playPlace);
		return "/play/updateForm";
	}

	@RequestMapping("/delete")
	public String delete(HttpSession session, int p_num, Model model) { // ����Ʈ���� �ٷ� ���� ��ũ�� �ɾ����Ƿ� deleteForm �ʿ� ����.
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ���̽ü������ ������ �� �ֽ��ϴ�!";
		String url = "list?playid=1";
		if (id.equals("admin")) {
			if (dao.delete(p_num) > 0) { // p_num�� ������ ������ �ִ� �� �ϳ��� ����
				msg = "���̽ü��� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "���̽ü��� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/info")
	public String info(int p_num, Model model) {
		PlayPlace playPlace = dao.selectOne(p_num); // �Խù� ��ȸ
		model.addAttribute("playPlace", playPlace);
		return "/play/info";
	}

}
