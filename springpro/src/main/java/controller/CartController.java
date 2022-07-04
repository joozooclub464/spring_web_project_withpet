package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.CartDaoMybatis;
import mybatis.Cart;
import mybatis.Goods;
import mybatis.Member;


@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartDaoMybatis dao;
	
	
	  @RequestMapping("/regist") 
	  public String regist(HttpSession session, Model model, Cart cart) { 
	  String id = (String) session.getAttribute("id"); 
	  String msg = ""; 
	  String url = "cartlist";
	  cart.setId(id);
	  if (dao.insert(cart) > 0) { 
	  msg = "장바구니에 추가합니다";
	   } 
	 model.addAttribute("url", url);
	  model.addAttribute("msg", msg);
	  return "/alert"; 
	  }
	 

	@RequestMapping("/cartlist")
	public String list(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id"); 
		List<Cart> list = dao.list(id);
		int sum=0;
		for(Cart cart:list) {
		sum+=cart.getCartStock()*cart.getGbsPrice();
		}
		model.addAttribute("list", list);
		model.addAttribute("sum",sum);
		return "/cart/basket";
	}
	
	@RequestMapping("/delete")
	public String delete(int cartId, Model model) {
		String msg = "";
		String url = "cartlist";
		
			if(dao.delete(cartId)>0) {
				msg = "상품을 성공적으로 삭제하였습니다.";
			} 
	
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
}
