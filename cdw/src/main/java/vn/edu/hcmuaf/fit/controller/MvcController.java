package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.edu.hcmuaf.fit.entity.*;

import vn.edu.hcmuaf.fit.model.EmailDetails;
import vn.edu.hcmuaf.fit.model.GooglePojo;

import vn.edu.hcmuaf.fit.service.MailService;
import vn.edu.hcmuaf.fit.service.MvcService;

@Controller
@RequestMapping("/u")
public class MvcController {
	
	@Autowired MvcService mvcService;
	@Autowired MailService mailService;
	
	@GetMapping("")
	public String homeForm(Model model, HttpSession session) {
		
		//TẠO ĐỐI TƯỢNG ORDER ĐỂ LÀM GIỎ HÀNG  
		if(session.getAttribute("order") == null) {
			OrderProduct op = new OrderProduct();
			op.setStatusOrder(1);
			session.setAttribute("order", op);
		}
		
		//HIỂN THỊ 3 CATEGORY (H ĐANG CHƯA CÓ ĐỦ 3 CÁI NÊN NÓ HIỆN LỖI)
		long id = 8;
		List<Product> produtList =mvcService.findByIdCategoryBig(id, 1,5);
		
		session.setAttribute("productList1", produtList);
		 
		
		long id2 = 3;
		List<Product> produtList2 =mvcService.findByIdCategoryBig(id2, 1,5);
		
		session.setAttribute("productList2", produtList2);

		long id3 = 10;
		List<Product> produtList3 =mvcService.findByIdCategoryBig(id3, 1,8);
		
		session.setAttribute("productList3", produtList3);  
		
		
		return "home";
	}
	
	/**
	 * 				USER
	 */
	
	@GetMapping("/login")
	public String loginForm(Model model) {
		return "Login";
	}
	
	@GetMapping("/exitUser")
	public String exitLogin(Model model, HttpSession session) {
		session.removeAttribute("user");
		return "home";
	}
	@PostMapping("/login")
	public String checkLogin(Model model, HttpServletRequest http, HttpSession session) {
		
		String username = http.getParameter("username");
		String password = http.getParameter("password");
		
		if(!mvcService.checkUser(username, password)) {
			model.addAttribute("error","* Username và password không đúng");
			return "Login";
		}
		
		User user = mvcService.getUserByUserName(username);
		session.setAttribute("user", user);
		return "home";
	}
	
	
	@GetMapping("/loginGoogle")
	public String googleLogin(Model model, HttpServletRequest http, HttpSession session) throws ClientProtocolException, IOException {
		
		String code = http.getParameter("code");//nhận code được google gửi qua (đây là refesh token)
		System.out.println("this is code:"+code);
		if (code.isEmpty()) {
            return "Login";
        }
            String accessToken = mvcService.getGoogleToken(code); //lấy accessToken( hoặc gọi là authenticationToken) bằng refesh token, App Secret và URL
            GooglePojo googlePojo = mvcService.getGoogleUserInfo(accessToken); //Lấy user info bằng accessToken
            System.out.println(googlePojo);
		
            String name = googlePojo.getName();
            String email = googlePojo.getEmail();
            
            User user = mvcService.getUserByEmail(email);
            if( user == null) {
            	user = mvcService.createUserByUsernameAndEmail(name, email);
            	mvcService.saveUser(user);
            }
            session.setAttribute("user", user);
		return "home";
	}
		
	
	@GetMapping("/signUp")
	public String signUpForm(Model model) {
		
		User user = new User();
		
		model.addAttribute("userRegister", user);
		return "signUp";
	}
	
	
	@PostMapping("/signUp")
	public String registerUser(@Valid @ModelAttribute("userRegister") User userRegister,
			BindingResult bindingResult, Model model) {
		
		System.out.println(userRegister);
		
		System.out.println(bindingResult);
		if (bindingResult.hasErrors()) {	
			return "signUp";
			
		}else if(mvcService.checkUsernameExist(userRegister)) {
			model.addAttribute("userName_error", "UserName đã tồn tại");
			return "signUp";
			
		}else if(mvcService.checkEmailExist(userRegister)){
			model.addAttribute("email_error", "email đã tồn tại");
			return "signUp";
		}
		
		//set user_permission là user
		userRegister.setUserPermission("user");
		
		//gửi mail khi đăng ký
		EmailDetails ed = new EmailDetails(userRegister.getEmail(), "Tin nhắn này là để xác nhận khách hàng vừa mới đăng ký tài khoảng trên shop của chúng tôi", "Xác nhận đăng ký tài khoảng!");
		
		mailService.sendSimpleMail(ed);
		
		mvcService.saveUser(userRegister);
		return "Login";
	}
	
	
	@GetMapping("/showUser")
	public String updateUserForm(Model model,HttpSession session) {
		
		User user =(User) session.getAttribute("user");

		List<OrderProduct> op = mvcService.getOrderProductByUser(user);
		
		model.addAttribute("userOrderProduct", op);
		model.addAttribute("userShow", user);
		return "updateUser";
	}
	
	@PostMapping("/updateUser")
	public String updateUser(@Valid @ModelAttribute("userShow") User userUpdate,
			BindingResult bindingResult, Model model, HttpSession session) {
		
		if (bindingResult.hasErrors()) {	
			List<OrderProduct> op = mvcService.getOrderProductByUser(userUpdate);
			
			model.addAttribute("userOrderProduct", op);
			return "updateUser";
			
		}else if(mvcService.checkUsernameExist(userUpdate)) {
			List<OrderProduct> op = mvcService.getOrderProductByUser(userUpdate);
			
			model.addAttribute("userOrderProduct", op);
			model.addAttribute("userName_error", "UserName đã tồn tại");
			return "updateUser";
		}else if(mvcService.checkEmailExist(userUpdate)){
			model.addAttribute("email_error", "email đã tồn tại");
			List<OrderProduct> op = mvcService.getOrderProductByUser(userUpdate);
			
			model.addAttribute("userOrderProduct", op);
			return "updateUser";
		}
	
		mvcService.saveUser(userUpdate);
		//cập nhật lại tài khoảng người dùng trong session
		session.setAttribute("user", userUpdate);
		return "home";
	}
	
	@GetMapping("/getBackPassword")
	public String getBackPasswordForm(Model model) {
		return "GetBackPassword";
	}
	
	@PostMapping("/getBackPassword")
	public String getBackPassword(Model model, @RequestParam String username, @RequestParam String email) {
		
		if(username.isEmpty() || email.isEmpty()) {
			model.addAttribute("error", "* Thông tin không được để trống");
			return "GetBackPassword";
		}
		
		User user= mvcService.getUserByUserName(username);
		if(user == null || !user.getEmail().equalsIgnoreCase(email)) {
			model.addAttribute("error", "* Nguời dùng không tồn tại");
			return "GetBackPassword";
		}
		
		//đổi lại mật khẩu là 123 và gửi cho khách hàng
		user.setPassword("123");
		this.mvcService.saveUser(user);
		//gửi mail xác nhận
		EmailDetails ed = new EmailDetails(email, "Mật khẩu của quý khách đã được đổi lại là : 123\n Quý khách vui lòng thay đổi lại mật khẩu sau khi đăng nhập", "Lấy lại mật khẩu!");
		
		mailService.sendSimpleMail(ed);
		
		model.addAttribute("message", "Mật khẩu của quý khách đã được gửi đến email: "+ email);
		return "GetBackPassword";
	}
	
	
	/**
	 * 
	 *	PRODUCT
	 */
	@GetMapping("/productDetail/{id}")
	public String productDetailForm(Model model, HttpSession session,@PathVariable long id) {
		
		Product product = mvcService.getProductById(id);
		model.addAttribute("productDetail", product);
		
		List<Product> produtList =mvcService.findByIdCategoryBig(product.getCategoryBig().getId(), 1,4);
		
		model.addAttribute("productListDetail", produtList);
		return "ProductDetail";
	}
	
	@GetMapping("/categoryBig/{categoryId}")
	public String storePageForm(Model model,@PathVariable long categoryId,HttpServletRequest http) {
		
		int productPerPage = 8;
		int page; //trang hiện tại(nếu mới đầu thì auto page =1)

        String pageString = http.getParameter("page");
        try {                                                     //vì lúc đầu không có số page đươc gửi qua nên phải dùng try catch
            page = Integer.parseInt(pageString);                   //trang vừa được nhấn
        } catch (NumberFormatException e) {
            page = 1;                                             //nếu mới đầu thì auto page =1
        }
		
		
		List<Product> produtList =mvcService.findByIdCategoryBig(categoryId, page, productPerPage);
		model.addAttribute("productList", produtList);
		
		//show page
		int totalProduct = mvcService.getTotalProductByIdCategoryBig(categoryId);
		
		int totalPage = mvcService.getTotalPage(totalProduct, productPerPage);
		
		model.addAttribute("totalpage", totalPage);
		
		model.addAttribute("pageSelected", page);
		
		CategoryBig ctb = mvcService.getCategoryBigById(categoryId);
		model.addAttribute("category", ctb);
		return "store";
	}
	
	@GetMapping("/categorySmall/{categoryId}")
	public String storeCategorySmallForm(Model model,@PathVariable long categoryId,HttpServletRequest http) {
		
		int productPerPage = 8;
		int page; //trang hiện tại(nếu mới đầu thì auto page =1)

        String pageString = http.getParameter("page");
        try {                                                     //vì lúc đầu không có số page đươc gửi qua nên phải dùng try catch
            page = Integer.parseInt(pageString);                   //trang vừa được nhấn
        } catch (NumberFormatException e) {
            page = 1;                                             //nếu mới đầu thì auto page =1
        }
		
		
		List<Product> produtList =mvcService.findByIdCategorySmall(categoryId, page, productPerPage);
		model.addAttribute("productList", produtList);
		
		//show page
		int totalProduct = mvcService.getTotalProductByIdCategorySmall(categoryId);
		int totalPage = mvcService.getTotalPage(totalProduct, productPerPage);
		
		model.addAttribute("totalpage", totalPage);
		
		model.addAttribute("pageSelected", page);
		
		CategorySmall ctm = mvcService.getCategorySmallById(categoryId);
		model.addAttribute("category", ctm);
		return "store";
	}
	
	@PostMapping("/search_mini")
	public @ResponseBody List<Product> testAjax2(@RequestParam String name) {

//		System.out.println(data);
		
		List<Product> result = mvcService.getProductByProductName(name, 1, 6);
		
		return result;
	}
	
	@GetMapping("/search")
	public String searchForm(Model model,HttpServletRequest http) {
		
		String productName = http.getParameter("productName");
		
		int productPerPage = 8;
		int page; //trang hiện tại(nếu mới đầu thì auto page =1)

        String pageString = http.getParameter("page");
        try {                                                     //vì lúc đầu không có số page đươc gửi qua nên phải dùng try catch
            page = Integer.parseInt(pageString);                   //trang vừa được nhấn
        } catch (NumberFormatException e) {
            page = 1;                                             //nếu mới đầu thì auto page =1
        }
		
        List<Product> result = mvcService.getProductByProductName(productName, page, productPerPage);
		model.addAttribute("productList", result);
		
		//show page
		int totalProduct = mvcService.getTotalProductByName(productName);
		
		int totalPage = mvcService.getTotalPage(totalProduct, productPerPage);
		
		model.addAttribute("totalpage", totalPage);
		
		model.addAttribute("pageSelected", page);
		model.addAttribute("pName", productName);
		return "search";
	}
	
	@PostMapping("/addProduct")
	public @ResponseBody OrderProduct addProductToCard(Model model, HttpSession session,@RequestParam long id, @RequestParam int quality) {
		
		OrderProduct op =(OrderProduct) session.getAttribute("order");
		 
		Product product = mvcService.getProductById(id);
		if(op.alreadyHaveProduct(product)) {
			
			mvcService.addQualityToOrderProduct(op, product, quality);
		} else {
			OrderDetail od = new OrderDetail(product);
			
			op.putOrderDetail(od);
			op.setTotalPrice();
		}
		
		session.setAttribute("order", op);
		System.out.println(op);
		return op; 
	}
	
	@PostMapping("/deleteProduct")
	public @ResponseBody OrderProduct deleteProductCart(Model model, HttpServletRequest http, HttpSession session,@RequestParam long id) {
		
		OrderProduct op =(OrderProduct) session.getAttribute("order");
		
		
		Product product = mvcService.getProductById(id);
		if(op.alreadyHaveProduct(product)) {
			
			op.deleteOrderDetailByProduct(product);
			op.setTotalPrice();
		}
		
		session.setAttribute("order", op);
		System.out.println(op);
		return op;
	}
	
	@GetMapping("/cart")
	public String cartForm(Model model) {
		
		return "cart";
	}
	
	@PostMapping("/addQuantityInCard")
	public @ResponseBody OrderProduct addQuantityInCard(Model model, HttpSession session,@RequestParam long idProduct, @RequestParam int quantity) {
		OrderProduct op =(OrderProduct) session.getAttribute("order");
		
		Product product = mvcService.getProductById(idProduct);
		
		mvcService.addQualityToOrderProduct(op, product, quantity);
		
		session.setAttribute("order", op);
		return op;
	}
	
	@GetMapping("/checkout")
	public String checkoutForm(Model model,HttpSession session) {
		
		User user =(User) session.getAttribute("user");
		
		OrderProduct op = (OrderProduct)session.getAttribute("order");
		if(user == null) {
			return "Login";
		}
		if(op.getTotalOrder() == 0) {
			return "cart";
		}
		return "checkout";
	}
	
	@PostMapping("/saveOrder")
	public String saveOrder(Model model,HttpSession session, @RequestParam String otherAddress) {
//		String otherAddress = http.getParameter("otherAddress");
		
		System.out.println(otherAddress);
		
		User user =(User) session.getAttribute("user");
		
		OrderProduct op = (OrderProduct)session.getAttribute("order");
		op.setUserOrder(user);
		op.setOtherAddress(otherAddress);
		mvcService.saveOrderProduct(op); 
		
		op = new OrderProduct();
		op.setStatusOrder(1);
		session.setAttribute("order", op);
		
		//gửi mail xác nhận
		EmailDetails ed = new EmailDetails(user.getEmail(), "Cảm ơn quý khách đã mua hàng của chúng tôi", "Xác nhận mua hàng!");
		mailService.sendSimpleMail(ed);
		
		return "home";
	}
}
