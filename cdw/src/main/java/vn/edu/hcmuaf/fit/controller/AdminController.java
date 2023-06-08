package vn.edu.hcmuaf.fit.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

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

import vn.edu.hcmuaf.fit.entity.ImgDetail;
import vn.edu.hcmuaf.fit.entity.OrderProduct;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.User;
import vn.edu.hcmuaf.fit.model.ProductDTO;
import vn.edu.hcmuaf.fit.service.MailService;
import vn.edu.hcmuaf.fit.service.MvcService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired MvcService mvcService;
	@Autowired MailService mailService;
	
	@GetMapping("/userList")
	public String adminForm(Model model,HttpSession session) {
		 
		List<User> userList = mvcService.getAllUser();
		
		//Lưu permission vào session
		session.setAttribute("permission", Arrays.asList("admin", "user"));
		//lưu sex ( giới tính) vào session
		session.setAttribute("sex", Arrays.asList("Nam", "Nữ"));
				
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@PostMapping("/updatePermission")
	public @ResponseBody String updatePermission(Model model,@RequestParam long userid, @RequestParam String permission) { 
		
		User user = mvcService.getUserById(userid);
		
		user.setUserPermission(permission);
		
		mvcService.saveUser(user);
		System.out.println(user);
		
		return "Thay đổi quyền thành công";
	}
	
	@GetMapping("/userInformation/{userId}")
	public String userShowInAdmin(Model model,@PathVariable long userId) {
		
		User user = mvcService.getUserById(userId);
		
		System.out.println(user);
		model.addAttribute("userInAdmin", user);
		return "admin/userShow";
	}
	
	@PostMapping("/userInformation/{userId}")
	public String userUpdateInAdmin(Model model,@Valid @ModelAttribute("userInAdmin") User userUpdate,
			BindingResult bindingResult,@PathVariable long userId) {
		
		
		if(mvcService.checkUsernameExist(userUpdate)) {
			
			model.addAttribute("userName_error", "UserName đã tồn tại");
			return "admin/userShow";
			
		}else if(mvcService.checkEmailExist(userUpdate)){
			model.addAttribute("email_error", "email đã tồn tại");
			return "admin/userShow"; 
		}
		
		if (bindingResult.hasErrors()) {	
			return "admin/userShow";
		}
		
		System.out.println(userUpdate);
		mvcService.saveUser(userUpdate);
		
		List<User> userList = mvcService.getAllUser();
		
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@GetMapping("/createUserInAdmin")
	public String createUserInAdminForm(Model model) {
		
		User user = new User();
		model.addAttribute("userInAdmin", user);
		return "admin/userShow";
	}
	
	@PostMapping("/createUserInAdmin")
	public String createUserInAdmin(Model model,@Valid @ModelAttribute("userInAdmin") User userCreate,
			BindingResult bindingResult) {
		
		System.out.println(mvcService.getUserByUserName(userCreate.getUserName()));
		if(mvcService.checkUsernameExist(userCreate)) {
			
			model.addAttribute("userName_error", "UserName đã tồn tại");
			return "admin/userShow";
			
		}else if(mvcService.checkEmailExist(userCreate)){
			model.addAttribute("email_error", "email đã tồn tại");
			return "admin/userShow";
		}
		
		if (bindingResult.hasErrors()) {	
			return "admin/userShow";
		}
		System.out.println(userCreate);
		mvcService.saveUser(userCreate);
		
		List<User> userList = mvcService.getAllUser();
		
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@PostMapping("/deleteUser")
	public @ResponseBody String deleteUser(Model model,@RequestParam long id) {
		
//		User user = new User();
	
		mvcService.deleteUserByid(id);
		
		return "Xóa thành công";
	}
	
	@GetMapping("/productList")
	public String productList(Model model, HttpSession session) {
		
		List<String> cateBig = mvcService.getAllCategoryBigName();
		session.setAttribute("cateBig", cateBig);
		
		List<String> cateSmall = mvcService.getAllCategorySmallName();
		session.setAttribute("cateSmall", cateSmall);
		
		List<Product> productList = mvcService.getAllProduct();
		
		model.addAttribute("productListInAdmin", productList);
		return "admin/productList";
	}
	
	@GetMapping("/productInformation/{productId}")
	public String productShowInAdmin(Model model,@PathVariable long productId) {
		
		Product product = mvcService.getProductById(productId);
		
		ProductDTO productDTO = new ProductDTO(product);
		model.addAttribute("productInAdmin", productDTO);
		return "admin/productShow";
	}
	
	@PostMapping("/productInformation/{productId}")
	public String productUpdateInAdmin(Model model,@Valid @ModelAttribute("productInAdmin") ProductDTO productUpdate,
			BindingResult bindingResult,@PathVariable long productId) {
		
		if (bindingResult.hasErrors()) {	
			
			return "admin/productShow";
		}
		Product product = mvcService.returnDTOToProduct(productUpdate);
		System.out.println(product);
		
		mvcService.saveProduct(product);
		List<Product> productList = mvcService.getAllProduct();
		model.addAttribute("productListInAdmin", productList);
		return "admin/productList";
	}
	
	@GetMapping("/createProductInAdmin")
	public String createProductInAdminForm(Model model) {
		
		ProductDTO product = new ProductDTO();
		
		model.addAttribute("productInAdmin", product);
		return "admin/productShow";
	}
	
	@PostMapping("/createProductInAdmin")
	public String createProductInAdmin(Model model,@Valid @ModelAttribute("productInAdmin") ProductDTO productCreate,
			BindingResult bindingResult) {
		
		if (bindingResult.hasErrors()) {	
			System.out.println(productCreate);
			return "admin/productShow";
		}
		
		Product product = mvcService.returnDTOToProduct(productCreate);
		System.out.println(product);
		
		mvcService.saveProduct(product);
		List<Product> productList = mvcService.getAllProduct();
		model.addAttribute("productListInAdmin", productList);
		return "admin/productList";
	}
	
	@PostMapping("/deleteProductInAdmin")
	public @ResponseBody String deleteProduct(Model model,@RequestParam long id) {
		
		Product product = mvcService.getProductById(id);
		product.setCategoryBig(null);
		product.setCategorySmall(null);
	
		mvcService.saveProduct(product);
		mvcService.deleteProductByid(id); //phải làm cái trên vì nếu xóa product thì category big và category small được gắn vào nó cũng bị xóa theo luôn
		
		return "Xóa sản phẩm thành công";
	}
	
	@GetMapping("/orderList")
	public String orderListForm(Model model) {
		
		List<OrderProduct> orderList = mvcService.getAllOrder();
		for(OrderProduct order: orderList) {
			System.out.println(order);
		}
		
		model.addAttribute("status", Arrays.asList("Đang giao", "Đã giao", "Hủy giao"));
		model.addAttribute("orderListInAdmin", orderList);
		return "admin/OrderList";
	}
	
	@PostMapping("/updateStatusOrder")
	public @ResponseBody String updateStatusOrder(Model model,@RequestParam long orderid, @RequestParam int status) { 
		
		OrderProduct op = mvcService.getOrderProductById(orderid);
		
		op.setStatusOrder(status);
		
		mvcService.saveOrderProduct(op);
		System.out.println(op);
		
		return "Cập nhật trạng thái đơn hàng thành công"; 
	}
}
