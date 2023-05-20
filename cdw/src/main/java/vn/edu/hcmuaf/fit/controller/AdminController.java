package vn.edu.hcmuaf.fit.controller;

import java.util.Arrays;
import java.util.List;

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
import vn.edu.hcmuaf.fit.service.MailService;
import vn.edu.hcmuaf.fit.service.MvcService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired MvcService mvcService;
	@Autowired MailService mailService;
	
	@GetMapping("/userList")
	public String adminForm(Model model) {
		
		List<User> userList = mvcService.getAllUser();
		for(User user: userList) {
			System.out.println(user.getUserPermission());
		}
		

		model.addAttribute("permission", Arrays.asList("admin", "user"));
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@PostMapping("/updatePermission")
	public @ResponseBody User updatePermission(Model model,@RequestParam long userid, @RequestParam String permission) { 
		
		User user = mvcService.getUserById(userid);
		
		user.setUserPermission(permission);
		
		mvcService.saveUser(user);
		System.out.println(user);
		
		return user;
	}
	
	@GetMapping("/userInformation/{userId}")
	public String userShowInAdmin(Model model,@PathVariable long userId) {
		
		User user = mvcService.getUserById(userId);
//		user.setPassword("");
		
		List<String> sex =  Arrays.asList("Nam", "Nữ");
		model.addAttribute("sex", sex);
		model.addAttribute("permission", Arrays.asList("admin", "user"));
		model.addAttribute("userInAdmin", user);
		return "admin/userShow";
	}
	
	@PostMapping("/userInformation/{userId}")
	public String userUpdateInAdmin(Model model,@Valid @ModelAttribute("userInAdmin") User userUpdate,
			BindingResult bindingResult,@PathVariable long userId) {
		
		
		if(mvcService.getUserByUserName(userUpdate.getUserName()).getId() != userId && mvcService.getUserByUserName(userUpdate.getUserName()) != null) {
			
			model.addAttribute("userName_error", "UserName đã tồn tại");
			List<String> sex =  Arrays.asList("Nam", "Nữ");
			model.addAttribute("sex", sex);
			model.addAttribute("permission", Arrays.asList("admin", "user"));
			return "admin/userShow";
			
		}else if(mvcService.getUserByEmail(userUpdate.getEmail()).getId() != userId && mvcService.getUserByEmail(userUpdate.getEmail()) != null){
			model.addAttribute("email_error", "email đã tồn tại");
			List<String> sex =  Arrays.asList("Nam", "Nữ");
			model.addAttribute("sex", sex);
			model.addAttribute("permission", Arrays.asList("admin", "user"));
			return "admin/userShow";
		}
		if (bindingResult.hasErrors()) {	
			System.out.println(userUpdate);
			List<String> sex =  Arrays.asList("Nam", "Nữ");
			model.addAttribute("sex", sex);
			model.addAttribute("permission", Arrays.asList("admin", "user"));
			return "admin/userShow";
		}
		System.out.println(userUpdate);
		mvcService.saveUser(userUpdate);
		
		List<User> userList = mvcService.getAllUser();
		
		for(User users: userList) {
			System.out.println(users.getBirthday());
		}
		model.addAttribute("permission", Arrays.asList("admin", "user"));
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@GetMapping("/createUserInAdmin")
	public String createUserInAdminForm(Model model) {
		
		User user = new User();
		
		List<String> sex =  Arrays.asList("Nam", "Nữ");
		model.addAttribute("sex", sex);
		model.addAttribute("permission", Arrays.asList("admin", "user"));
		model.addAttribute("userInAdmin", user);
		return "admin/userShow";
	}
	
	@PostMapping("/createUserInAdmin")
	public String createUserInAdmin(Model model,@Valid @ModelAttribute("userInAdmin") User userCreate,
			BindingResult bindingResult) {
		
		System.out.println(mvcService.getUserByUserName(userCreate.getUserName()));
		if(mvcService.getUserByUserName(userCreate.getUserName()) != null) {
			
			model.addAttribute("userName_error", "UserName đã tồn tại");
			List<String> sex =  Arrays.asList("Nam", "Nữ");
			model.addAttribute("sex", sex);
			model.addAttribute("permission", Arrays.asList("admin", "user"));
			return "admin/userShow";
			
		}else if(mvcService.getUserByEmail(userCreate.getEmail()) != null){
			model.addAttribute("email_error", "email đã tồn tại");
			List<String> sex =  Arrays.asList("Nam", "Nữ");
			model.addAttribute("sex", sex);
			model.addAttribute("permission", Arrays.asList("admin", "user"));
			return "admin/userShow";
		}
		
		if (bindingResult.hasErrors()) {	
			System.out.println(userCreate);
			List<String> sex =  Arrays.asList("Nam", "Nữ");
			model.addAttribute("sex", sex);
			model.addAttribute("permission", Arrays.asList("admin", "user"));
			return "admin/userShow";
		}
		System.out.println(userCreate);
		mvcService.saveUser(userCreate);
		
		List<User> userList = mvcService.getAllUser();
		
		for(User users: userList) {
			System.out.println(users.getBirthday());
		}
		model.addAttribute("permission", Arrays.asList("admin", "user"));
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@PostMapping("/deleteUser")
	public @ResponseBody User deleteUser(Model model,@RequestParam long id) {
		
		User user = new User();
	
		mvcService.deleteUserByid(id);
		
		return user;
	}
	@GetMapping("/productList")
	public String productList(Model model) {
		
		List<Product> productList = mvcService.getAllProduct();
		
		model.addAttribute("productListInAdmin", productList);
		return "admin/productList";
	}
	
	@GetMapping("/productInformation/{productId}")
	public String productShowInAdmin(Model model,@PathVariable long productId) {
		
		Product product = mvcService.getProductById(productId);
		
		List<String> cateBig = mvcService.getAllCategoryBigString();
		model.addAttribute("cateBig", cateBig);
		
		List<String> cateSmall = mvcService.getAllCategorySmallString();
		model.addAttribute("cateSmall", cateSmall);
		
		int index =1;
		for(ImgDetail imd : product.getDetails()) {
			model.addAttribute("small_img_"+index++, imd.getImgName());
		}
		model.addAttribute("productInAdmin", product);
		return "admin/productShow";
	}
	
	@PostMapping("/productInformation/{productId}")
	public String productUpdateInAdmin(Model model,@Valid @ModelAttribute("productInAdmin") Product productUpdate,
			BindingResult bindingResult,@PathVariable long productId,@RequestParam String small_img_1, @RequestParam String small_img_2,@RequestParam String small_img_3) {
		
		if (bindingResult.hasErrors()) {	
			List<String> cateBig = mvcService.getAllCategoryBigString();
			model.addAttribute("cateBig", cateBig);
			
			List<String> cateSmall = mvcService.getAllCategorySmallString();
			model.addAttribute("cateSmall", cateSmall);
			
			return "admin/productShow";
		}
		productUpdate.setDetails(mvcService.getProductById(productUpdate.getId()).getDetails());
		
		productUpdate.getDetails().get(0).setImgName(small_img_1);
		productUpdate.getDetails().get(1).setImgName(small_img_2);
		productUpdate.getDetails().get(2).setImgName(small_img_3);
		
		productUpdate.setCategoryBig(mvcService.getCategoryBigByName(productUpdate.getCategoryBig().getCategoryName()));
		productUpdate.setCategorySmall(mvcService.getCategorySmallByName(productUpdate.getCategorySmall().getCategoryName()));
		System.out.println(productUpdate);
		
		mvcService.saveProduct(productUpdate);
		List<Product> productList = mvcService.getAllProduct();
		model.addAttribute("productListInAdmin", productList);
		return "admin/productList";
	}
	
	@GetMapping("/createProductInAdmin")
	public String createProductInAdminForm(Model model) {
		
		Product product = new Product();
		
		List<String> cateBig = mvcService.getAllCategoryBigString();
		model.addAttribute("cateBig", cateBig);
		
		
		List<String> cateSmall = mvcService.getAllCategorySmallString();
		model.addAttribute("cateSmall", cateSmall);
		
		model.addAttribute("productInAdmin", product);
		return "admin/productShow";
	}
	
	@PostMapping("/createProductInAdmin")
	public String createProductInAdmin(Model model,@Valid @ModelAttribute("productInAdmin") Product productCreate,
			BindingResult bindingResult ,@RequestParam String small_img_1, @RequestParam String small_img_2,@RequestParam String small_img_3) {
		
		if (bindingResult.hasErrors()) {	
			List<String> cateBig = mvcService.getAllCategoryBigString();
			model.addAttribute("cateBig", cateBig);
			
			List<String> cateSmall = mvcService.getAllCategorySmallString();
			model.addAttribute("cateSmall", cateSmall);
			
			return "admin/productShow";
		}
		productCreate.getDetails().add(new ImgDetail(small_img_1)); 
		productCreate.getDetails().add(new ImgDetail(small_img_2)); 
		productCreate.getDetails().add(new ImgDetail(small_img_3)); 
		
		productCreate.setCategoryBig(mvcService.getCategoryBigByName(productCreate.getCategoryBig().getCategoryName()));
		productCreate.setCategorySmall(mvcService.getCategorySmallByName(productCreate.getCategorySmall().getCategoryName()));
		System.out.println(productCreate);
		
		mvcService.saveProduct(productCreate);
		List<Product> productList = mvcService.getAllProduct();
		model.addAttribute("productListInAdmin", productList);
		return "admin/productList";
	}
	
	@PostMapping("/deleteProductInAdmin")
	public @ResponseBody Product deleteProduct(Model model,@RequestParam long id) {
		
		Product product = mvcService.getProductById(id);
		product.setCategoryBig(null);
		product.setCategorySmall(null);
	
		mvcService.saveProduct(product);
		mvcService.deleteProductByid(id); //phải làm cái trên vì nếu xóa product thì category big và category small được gắn vào nó cũng bị xóa theo luôn
		
		return product;
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
	public @ResponseBody OrderProduct updateStatusOrder(Model model,@RequestParam long orderid, @RequestParam int status) { 
		
		OrderProduct op = mvcService.getOrderProductById(orderid);
		
		op.setStatusOrder(status);
		
		mvcService.saveOrderProduct(op);
		System.out.println(op);
		
		return op;
	}
}
