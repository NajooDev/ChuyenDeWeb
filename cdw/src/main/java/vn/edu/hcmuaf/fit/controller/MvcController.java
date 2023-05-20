package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.edu.hcmuaf.fit.entity.*;
import vn.edu.hcmuaf.fit.repository.CategoryBigRepository;
import vn.edu.hcmuaf.fit.repository.ProductRepository;
import vn.edu.hcmuaf.fit.repository.UserRepository;
import vn.edu.hcmuaf.fit.service.MailService;
import vn.edu.hcmuaf.fit.service.MvcService;

@Controller
public class MvcController {
	
	@Autowired MvcService mvcService;
	@Autowired MailService mailService;
	
	@GetMapping("/")
	public String homeForm(Model model, HttpSession session) {
		
		if(session.getAttribute("order") == null) {
			OrderProduct op = new OrderProduct();
			op.setStatusOrder(1);
			session.setAttribute("order", op);
		}
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
		
//		User user = this.userRepository.findByUserName(username);// == null nếu không tìm ra được
//		
//		System.out.println(user);
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
		System.out.println(code);
		if (code == null || code.isEmpty()) {
            return "login";
        }
            String accessToken = mvcService.getGoogleToken(code); //lấy accessToken( hoặc gọi là authenticationToken) bằng refesh token, App Secret và URL
            GooglePojo googlePojo = mvcService.getGoogleUserInfo(accessToken); //Lấy user info
            System.out.println(googlePojo);
		
            String name = googlePojo.getName();
            String email = googlePojo.getEmail();
            
            User user = new User();
            if(mvcService.getUserByEmail(email) == null) {
            	user.setUserName(name);
            	user.setEmail(email);
            	user.setAddress("Empty");
            	user.setBirthday(new Date());
            	user.setUserPermission("user");
            	user.setPassword("no password");
            	user.setSex("Nam");
            	user.setPhone("Empty");
            	mvcService.saveUser(user);
            }
            user = mvcService.getUserByEmail(email);
            session.setAttribute("user", user);
		return "home";
	}
		
	
	@GetMapping("/signUp")
	public String signUpForm(Model model) {
		
		User user = new User();
		
		model.addAttribute("userRegister", user);
		return "signUp";
	}
	
//	@GetMapping("/signUp2")
//	public String signUpForm2(Model model) {
//		
//		return "signUp2";
//	}
	
	@PostMapping("/signUp")
	public String registerUser(@Valid @ModelAttribute("userRegister") User userRegister,
			BindingResult bindingResult, Model model) {
		
		System.out.println("Professing form...");
		System.out.println(userRegister);
		
		System.out.println(bindingResult);
		if (bindingResult.hasErrors()) {	
			return "signUp";
		}
		
//		Long id = this.userRepository.getMaxId() +1;
//		userRegister.setId(id);
//		
//		this.userRepository.save(userRegister);
		
		//set user_permission là user
		userRegister.setUserPermission("user");
		//gửi mail khi đăng ký
		EmailDetails ed = new EmailDetails(userRegister.getEmail(), "Tin nhắn này là để xác nhận khách hàng vừa mới đăng ký tài khoảng trên shop của chúng tôi", "Xác nhận đăng ký tài khoảng!");
		System.out.println(mailService.sendSimpleMail(ed));
		
		mvcService.saveUser(userRegister);
		return "Login";
	}
	
	@GetMapping("/productDetail/{id}")
	public String productDetailForm(Model model,@PathVariable long id) {
		
		Product product = mvcService.getProductById(id);
		model.addAttribute("productDetail", product);
		return "ProductDetail";
	}
	
	@GetMapping("/categoryBig/{categoryId}")
	public String storePageForm(Model model,@PathVariable long categoryId,HttpServletRequest http) {
		
		int productPerPage = 1;
		int page; //trang hiện tại(nếu mới đầu thì auto page =1)

        String pageString = http.getParameter("page");
        try {                                                     //vì lúc đầu không có số page đươc gửi qua nên phải dùng try catch
            page = Integer.parseInt(pageString);                   //trang vừa được nhấn
        } catch (NumberFormatException e) {
            page = 1;                                             //nếu mới đầu thì auto page =1
        }
		
		
		List<Product> produtList =mvcService.findByIdCategoryBig(categoryId, page, productPerPage);
		model.addAttribute("productList", produtList);
		
		int totalProduct = mvcService.getTotalProductByIdCategoryBig(categoryId);
		int totalPage = totalProduct/productPerPage;
		if(totalProduct%productPerPage !=0) {
			totalPage++;
		}
		System.out.println(totalPage);
		model.addAttribute("totalpage", totalPage);
		
		model.addAttribute("pageSelected", page);
		
		CategoryBig ctb = mvcService.getCategoryBigById(categoryId);
		model.addAttribute("category", ctb);
		return "store";
	}
	
	@GetMapping("/categorySmall/{categoryId}")
	public String storeCategorySmallForm(Model model,@PathVariable long categoryId,HttpServletRequest http) {
		
		int productPerPage = 1;
		int page; //trang hiện tại(nếu mới đầu thì auto page =1)

        String pageString = http.getParameter("page");
        try {                                                     //vì lúc đầu không có số page đươc gửi qua nên phải dùng try catch
            page = Integer.parseInt(pageString);                   //trang vừa được nhấn
        } catch (NumberFormatException e) {
            page = 1;                                             //nếu mới đầu thì auto page =1
        }
		
		
		List<Product> produtList =mvcService.findByIdCategorySmall(categoryId, page, productPerPage);
		model.addAttribute("productList", produtList);
		
		int totalProduct = mvcService.getTotalProductByIdCategorySmall(categoryId);
		int totalPage = totalProduct/productPerPage;
		if(totalProduct%productPerPage !=0) {
			totalPage++;
		}
		System.out.println(totalPage);
		model.addAttribute("totalpage", totalPage);
		
		model.addAttribute("pageSelected", page);
		
		CategorySmall ctm = mvcService.getCategorySmallById(categoryId);
		model.addAttribute("category", ctm);
		return "store";
	}
	
	@PostMapping("/search_mini")
	public @ResponseBody List<Product> testAjax2(@RequestParam String data) {

//		System.out.println(data);
		
		List<Product> result = mvcService.getProductByProductName(data, 1, 6);
		
		return result;
	}
	
	@GetMapping("/search")
	public String searchForm(Model model,HttpServletRequest http) {
		
		String productName = http.getParameter("productName");
		
		int productPerPage = 1;
		int page; //trang hiện tại(nếu mới đầu thì auto page =1)

        String pageString = http.getParameter("page");
        try {                                                     //vì lúc đầu không có số page đươc gửi qua nên phải dùng try catch
            page = Integer.parseInt(pageString);                   //trang vừa được nhấn
        } catch (NumberFormatException e) {
            page = 1;                                             //nếu mới đầu thì auto page =1
        }
		
        List<Product> result = mvcService.getProductByProductName(productName, page, productPerPage);
		model.addAttribute("productList", result);
		
		int totalProduct = mvcService.getTotalProductByName(productName);
		int totalPage = totalProduct/productPerPage;
		if(totalProduct%productPerPage !=0) {
			totalPage++;
		}
		System.out.println(totalPage);
		model.addAttribute("totalpage", totalPage);
		
		model.addAttribute("pageSelected", page);
		model.addAttribute("pName", productName);
		return "search";
	}
	
	@PostMapping("/addProduct")
	public @ResponseBody OrderProduct addProductToCard(Model model, HttpServletRequest http, HttpSession session,@RequestParam long id, @RequestParam int quality) {
		
		OrderProduct op =(OrderProduct) session.getAttribute("order");
		
		Product product = mvcService.getProductById(id);
		if(op.alreadyHaveProduct(product)) {
			
			op.findOrderDetailByProduct(product).addQuality(quality);
			op.findOrderDetailByProduct(product).setPrice();
			
			op.setTotalPrice();
		} else {
			OrderDetail od = new OrderDetail();
			od.setProductOrder(product);
			od.setQuality(1);
			od.setPrice();
			od.setDayOrder();

			op.putOrderDetail(od);
			op.setTotalPrice();
		}
		
		session.setAttribute("order", op);
		session.setAttribute("orderDetail", op.getOrderdetails());
		System.out.println(op);
		return op;
	}
	
	@PostMapping("/saveOrder")
	public String saveOrder(Model model,HttpSession session,HttpServletRequest http) {
		String otherAddress = http.getParameter("otherAddress");
		
		System.out.println(otherAddress);
		User user =(User) session.getAttribute("user");
		
		OrderProduct op = (OrderProduct)session.getAttribute("order");
		op.setUserOrder(user);
		op.setOtherAddress(otherAddress);
		mvcService.saveOrderProduct(op); 
		
		op = new OrderProduct();
		op.setStatusOrder(1);
		session.setAttribute("order", op);
		session.removeAttribute("orderDetail");
		
		//gửi mail xác nhận
		EmailDetails ed = new EmailDetails(user.getEmail(), "Cảm ơn quý khách đã mua hàng của chúng tôi", "Xác nhận mua hàng!");
		System.out.println(mailService.sendSimpleMail(ed));
		
		return "home";
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
		session.setAttribute("orderDetail", op.getOrderdetails());
		System.out.println(op);
		return op;
	}
	
	@GetMapping("/cart")
	public String cartForm(Model model) {
		
		return "cart";
	}
	
	@PostMapping("/addQuantityInCard")
	public @ResponseBody OrderProduct addQuantityInCard(Model model, HttpServletRequest http, HttpSession session,@RequestParam long idProduct, @RequestParam int quantity) {
		OrderProduct op =(OrderProduct) session.getAttribute("order");
		
		Product product = mvcService.getProductById(idProduct);
		op.findOrderDetailByProduct(product).setQuality(quantity);
		op.findOrderDetailByProduct(product).setPrice();
		
		session.setAttribute("order", op);
		session.setAttribute("orderDetail", op.getOrderdetails());
		
		op.setTotalPrice();
		return op;
	}
	
	@GetMapping("/checkout")
	public String checkoutForm(Model model,HttpSession session) {
		
		User user =(User) session.getAttribute("user");
		if(user == null) {
			return "Login";
		}
		return "checkout";
	}
	
	@GetMapping("/showUser")
	public String updateUserForm(Model model,HttpSession session) {
		
		User user =(User) session.getAttribute("user");
		List<OrderDetail> allOrderDetail = new ArrayList<>();
		
		for(OrderProduct op : mvcService.getOrderProductByUser(user)) {
			allOrderDetail.addAll(op.getOrderdetails());
		}
		
		model.addAttribute("userOrderDetail", allOrderDetail);
		model.addAttribute("userShow", user);
		return "updateUser";
	}
	
	@PostMapping("/updateUser")
	public String updateUser(@Valid @ModelAttribute("userShow") User userUpdate,
			BindingResult bindingResult, Model model) {
		
		System.out.println("Professing form...");
		System.out.println(userUpdate);
		
		System.out.println(bindingResult);
		if (bindingResult.hasErrors()) {	
			return "updateUser";
		}
		
//		Long id = this.userRepository.getMaxId() +1;
//		userRegister.setId(id);
//		
//		this.userRepository.save(userRegister);
		mvcService.saveUser(userUpdate);
		return "home";
	}
	
	@GetMapping("/getBackPassword")
	public String getBackPasswordForm(Model model) {
		return "GetBackPassword";
	}
	
	@PostMapping("/getBackPassword")
	public String getBackPassword(Model model, HttpServletRequest http) {
		
		String username = http.getParameter("username");
		String email = http.getParameter("email");
		
		if(username.isEmpty() || email.isEmpty()) {
			model.addAttribute("error", "* Thông tin không được để trống");
			return "GetBackPassword";
		}
		
		User user= mvcService.getUserByUserName(username);
		if(user == null || !user.getEmail().equalsIgnoreCase(email)) {
			model.addAttribute("error", "* Nguời dùng không tồn tại");
			return "GetBackPassword";
		}
		//gửi mail xác nhận
		EmailDetails ed = new EmailDetails(email, "Mật khẩu của quý khách là : "+ user.getPassword(), "Lấy lại mật khẩu!");
		System.out.println(mailService.sendSimpleMail(ed));
		
		model.addAttribute("message", "Mật khẩu của quý khách đã được gửi đến email: "+ email);
		return "GetBackPassword";
	}
}
