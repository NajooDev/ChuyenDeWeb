package vn.edu.hcmuaf.fit.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import vn.edu.hcmuaf.fit.entity.CategoryBig;
import vn.edu.hcmuaf.fit.entity.CategorySmall;
import vn.edu.hcmuaf.fit.entity.Constants;
import vn.edu.hcmuaf.fit.entity.GooglePojo;
import vn.edu.hcmuaf.fit.entity.OrderProduct;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.User;
import vn.edu.hcmuaf.fit.repository.CategoryBigRepository;
import vn.edu.hcmuaf.fit.repository.CategorySmallRepository;
import vn.edu.hcmuaf.fit.repository.ImgDetailRepository;
import vn.edu.hcmuaf.fit.repository.OrderProductRepository;
import vn.edu.hcmuaf.fit.repository.ProductRepository;
import vn.edu.hcmuaf.fit.repository.UserRepository;

@Service
public class MvcService {

	private static final MvcService instance = new MvcService();

	@Autowired UserRepository userRepository;
	@Autowired ProductRepository productRepository;
	@Autowired CategoryBigRepository bigRepository;
	@Autowired CategorySmallRepository smallRepository;
	@Autowired OrderProductRepository orderProductRepository;
	@Autowired ImgDetailRepository imgDetailRepository;
	
	public static MvcService getInstance() {
		return instance;
	}
	
	
	//lấy ra các sản phẩm category big có id có chia trang
	public List<Product> findByIdCategoryBig(Long id, int page, int productPerPage){
		Pageable firstPageWithTwoElements = PageRequest.of(page-1, productPerPage);
		Optional<CategoryBig> cb = bigRepository.findById(id);
		return productRepository.findByCategoryBig(cb.get(),firstPageWithTwoElements);
	}
	
	//lấy ra các sản phẩm category big có id có chia trang
		public List<Product> findByIdCategorySmall(Long id, int page, int productPerPage){
			Pageable firstPageWithTwoElements = PageRequest.of(page-1, productPerPage);
			Optional<CategorySmall> cb = smallRepository.findById(id);
			return productRepository.findByCategorySmall(cb.get(),firstPageWithTwoElements);
		}
	/**
	 * Kiểm tra user có tồn tại không
	 * @param username
	 * @param password
	 * @return boolean
	 */
	public boolean checkUser(String username, String password) {
		User user = this.userRepository.findByUserName(username);// == null nếu không tìm ra được
		
		if(user == null || !user.getPassword().equalsIgnoreCase(password)) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * Lấy User từ userName
	 * @param userName
	 * @return User
	 */
	public User getUserByUserName(String userName) {
		return this.userRepository.findByUserName(userName);
	}
	
	/**
	 * Lưu user vào csdl
	 * @param userRegister
	 */
	public void saveUser(User userRegister) {
		this.userRepository.save(userRegister);
	}
	
	
	/**
    *
    *ĐĂNG NHẬP BẰNG GOOGLE
    */
	public  String getGoogleToken(String code) throws ClientProtocolException, IOException {
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri",Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public  GooglePojo getGoogleUserInfo(String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
        System.out.println(googlePojo);
        return googlePojo;
    }
   
	
	/**
	 * Lấy product từ id
	 * @param id
	 * @return Product
	 */
	public Product getProductById(Long id) {
		Optional<Product> product = this.productRepository.findById(id);
		return product.get();
	}
	
	public int getTotalProductByIdCategoryBig(Long id){
		Optional<CategoryBig> cb = bigRepository.findById(id);
		
		List<Product> all = this.productRepository.findByCategoryBig(cb.get());
		
		return all.size();
	}
	
	public int getTotalProductByIdCategorySmall(Long id){
		Optional<CategorySmall> cb = smallRepository.findById(id);
		
		List<Product> all = this.productRepository.findByCategorySmall(cb.get());
		
		return all.size();
	}
	public List<Product> getProductByProductName(String name,int page, int productPerPage){
		Pageable firstPageWithSixElements = PageRequest.of(page-1, productPerPage);
		String productName ="%"+name+"%";
		return this.productRepository.findByProductNameLike(productName,firstPageWithSixElements);
	}
	
	public int getTotalProductByName(String name) {
		
		String productName ="%"+name+"%";
		List<Product> all =  this.productRepository.findByProductNameLike(productName);
		
		return all.size();
	}
	
	public void saveOrderProduct(OrderProduct op) {
		this.orderProductRepository.save(op);
	}
	
	public List<OrderProduct> getOrderProductByUser(User user){
		return this.orderProductRepository.findByuserOrder(user);
	}
	
	/**
	 * 
	 * Admin
	 */
	
	public List<User> getAllUser(){
		
		return (List<User>) this.userRepository.findAll();
	}
	
	public User getUserById(long id) {
		return this.userRepository.findById(id).get();
	}
	
	public User getUserByEmail(String email) {
		return this.userRepository.findByEmail(email);
	}
	
	public User getUserByName(String name) {
		return this.userRepository.findByUserName(name);
	}
	
	public void deleteUserByid(long id) {
		this.userRepository.deleteById(id);
	}
	
	//product
	public List<Product> getAllProduct(){
		return (List<Product>) this.productRepository.findAll();
	}
	
	public List<String> getAllCategoryBigString(){
		List<String> result = new ArrayList<>();
		for(CategoryBig category: this.bigRepository.findAll()) {
			result.add(category.getCategoryName());
		}
		return result;
	}
	
	public CategoryBig getCategoryBigById(long id) {
		return this.bigRepository.findById(id).get();
	}
	public CategoryBig getCategoryBigByName(String name) {
		return this.bigRepository.findByCategoryName(name);
	}
	
	public List<String> getAllCategorySmallString(){
		List<String> result = new ArrayList<>();
		for(CategorySmall category: this.smallRepository.findAll()) {
			result.add(category.getCategoryName());
		}
		return result;
	}
	
	public CategorySmall getCategorySmallById(long id) {
		return this.smallRepository.findById(id).get();
	}
	public CategorySmall getCategorySmallByName(String name) {
		return this.smallRepository.findByCategoryName(name);
	}
	public void saveProduct(Product product) {
		this.productRepository.save(product);
	}
	
	public void deleteProductByid(long id) {
		this.productRepository.deleteById(id);
	}
	
	/*
	 * public void deleteImgDetailByName(List<String> imgs) { for(String s: imgs) {
	 * this.imgDetailRepository.deleteByImgName(s); } }
	 */
	
	public List<OrderProduct> getAllOrder(){
		return (List<OrderProduct>) this.orderProductRepository.findAll();
	}
	
	public OrderProduct getOrderProductById(long id) {
		return this.orderProductRepository.findById(id).get();
	}
}
