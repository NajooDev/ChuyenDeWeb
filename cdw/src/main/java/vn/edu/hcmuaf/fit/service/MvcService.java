package vn.edu.hcmuaf.fit.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.security.crypto.password.PasswordEncoder;

import vn.edu.hcmuaf.fit.entity.CategoryBig;
import vn.edu.hcmuaf.fit.entity.CategorySmall;
import vn.edu.hcmuaf.fit.entity.ImgDetail;
import vn.edu.hcmuaf.fit.entity.OrderProduct;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.User;

import vn.edu.hcmuaf.fit.model.ProductDTO;
import vn.edu.hcmuaf.fit.model.Constants;
import vn.edu.hcmuaf.fit.model.GooglePojo;
import vn.edu.hcmuaf.fit.repository.CategoryBigRepository;
import vn.edu.hcmuaf.fit.repository.CategorySmallRepository;
import vn.edu.hcmuaf.fit.repository.ImgDetailRepository;
import vn.edu.hcmuaf.fit.repository.OrderProductRepository;
import vn.edu.hcmuaf.fit.repository.ProductRepository;
import vn.edu.hcmuaf.fit.repository.UserRepository;


@Service
public class MvcService {

	private static final MvcService instance = new MvcService();

	@Autowired
	UserRepository userRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	CategoryBigRepository bigRepository;
	@Autowired
	CategorySmallRepository smallRepository;
	@Autowired
	OrderProductRepository orderProductRepository;
	@Autowired
	ImgDetailRepository imgDetailRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	public static MvcService getInstance() {
		return instance;
	}
	/**
	 * 			USER
	 * 
	 */

	/**
	 * Kiểm tra user có tồn tại không
	 * @param username
	 * @param password
	 * @return true, false
	 */
	public boolean checkUser(String username, String password) {
		User user = this.userRepository.findByUserName(username);// == null nếu không tìm ra được

		if (user == null || !passwordEncoder.matches(password, user.getPassword())) {
			return false;
		}

		return true;
	}

	/**
	 * Kiểm tra username có tồn tại trong csdl chưa
	 * @param user
	 * @return true , false
	 */
	public boolean checkUsernameExist(User user) {
		// create user
		if (user.getId() == null) {
			if (getUserByName(user.getUserName()) != null) {
				return true;
			} else {
				return false;
			}
		} else {
			//update user
			User userHaveName = getUserByName(user.getUserName());
			if (userHaveName != null && userHaveName.getId() != user.getId() ) {
				return true;
			} else {
				return false;
			}
		}
	}

	/**
	 * Kiểm tra email có tồn tại trong csdl không
	 * @param user
	 * @return true, false
	 */
	public boolean checkEmailExist(User user) {
		// create user
		if (user.getId() == null) {
			if (getUserByEmail(user.getEmail()) != null) {
				return true;
			} else {
				return false;
			}
		} else {
			//update user
			User userHaveEmail = getUserByEmail(user.getEmail());
			if (userHaveEmail != null && userHaveEmail.getId() != user.getId() ) {
				return true;
			} else {
				return false;
			}
		}
	}
	/**
	 * Lấy ra User từ userName
	 * 
	 * @param userName
	 * @return User
	 */
	public User getUserByUserName(String userName) {
		return this.userRepository.findByUserName(userName);
	}

	public User getUserByEmail(String email) {
		return this.userRepository.findByEmail(email);
	}

	/**
	 * Lưu User vào csdl
	 * 
	 * @param userRegister
	 */
	public void saveUser(User userRegister) {
		// mã hóa mật khẩu
		if (userRegister.getPassword().length() != 60) {
			String passwordEncoding = passwordEncoder.encode(userRegister.getPassword());
			userRegister.setPassword(passwordEncoding);
		}
		this.userRepository.save(userRegister);
	}

	/**
	 *
	 * ĐĂNG NHẬP BẰNG GOOGLE
	 */
	
	/**
	 * Lấy accessToken bằng code
	 * @param code
	 * @return accessToken
	 */
	public String getGoogleToken(String code) throws ClientProtocolException, IOException {
		String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
						.add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();
		JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		return accessToken;
	}

	/**
	 * Lấy ra thông tin người dùng
	 * @param accessToken
	 * @return GooglePojo (thông tin người dùng)
	 */
	public GooglePojo getGoogleUserInfo(String accessToken) throws ClientProtocolException, IOException {
		String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
		String response = Request.Get(link).execute().returnContent().asString();
		GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
		System.out.println(googlePojo);
		return googlePojo;
	}

	/**
	 * Tạo User chỉ có username và password
	 * @param username
	 * @param email
	 * @return User
	 */
	public User createUserByUsernameAndEmail(String username, String email) {
		User user = new User();
		user.setUserName(username);
		user.setPassword("no password");
		user.setEmail(email);
		user.setBirthday(new Date());
		user.setAddress("Empty");
		user.setSex("Nam");
		user.setPhone("0123456789");
		user.setUserPermission("user");

		return user;
	}

	/**
	 * Lấy ra danh sách tất cả user
	 * @return List<User>
	 */
	public List<User> getAllUser() {
		return (List<User>) this.userRepository.findAll();
	}

	/**
	 * Lấy ra User bằng user id
	 * @param id
	 * @return User
	 */
	public User getUserById(long id) {
		return this.userRepository.findById(id).get();
	}

	/**
	 * Lấy ra User bằng username
	 * @param name
	 * @return User
	 */
	public User getUserByName(String name) {
		return this.userRepository.findByUserName(name);
	}

	/**
	 * Xóa user bằng user id
	 * @param id
	 */
	public void deleteUserByid(long id) {
		User user = getUserById(id);

		// delete orderProduct
		List<OrderProduct> op = this.orderProductRepository.findByuserOrder(user);
		for (OrderProduct orderProduct : op) {
			this.orderProductRepository.delete(orderProduct);
		}
		this.userRepository.deleteById(id);
	}
	
	/**
	 * 
	 * 			PRODUCT
	 */
	/**
	 * lấy ra các sản phẩm category big có id có chia trang
	 * @param id
	 * @param page
	 * @param productPerPage
	 * @return List<Product>
	 */
	public List<Product> findByIdCategoryBig(Long id, int page, int productPerPage) {
		Pageable firstPageWithNumberElements = PageRequest.of(page - 1, productPerPage);
		Optional<CategoryBig> cb = bigRepository.findById(id);
		return productRepository.findByCategoryBig(cb.get(), firstPageWithNumberElements);
	}

	/**
	 * lấy ra các sản phẩm category small có id có chia trang
	 * @param id
	 * @param page
	 * @param productPerPage
	 * @return List<Product>
	 */
	public List<Product> findByIdCategorySmall(Long id, int page, int productPerPage) {
		Pageable firstPageWithNumberElements = PageRequest.of(page - 1, productPerPage);
		Optional<CategorySmall> cb = smallRepository.findById(id);
		return productRepository.findByCategorySmall(cb.get(), firstPageWithNumberElements);
	}

	/**
	 * Lấy product từ id
	 * 
	 * @param id
	 * @return Product
	 */
	public Product getProductById(Long id) {
		Optional<Product> product = this.productRepository.findById(id);
		return product.get();
	}

	/**
	 * Thêm sản phẩm đã tồn tại trong giỏ hàng và cập nhật số tiền giỏ hàng
	 * @param op
	 * @param product
	 * @param quality
	 */
	public void addQualityToOrderProduct(OrderProduct op, Product product, int quality) {
		op.findOrderDetailByProduct(product).addQuality(quality);
		op.findOrderDetailByProduct(product).setPrice();
		
		op.setTotalPrice();
	}
	/**
	 * Tính tổng số trang sẽ hiện bằng totalProduct và productPerPage
	 * @param totalProduct
	 * @param productPerPage
	 * @return totalPage
	 */
	public int getTotalPage(int totalProduct, int productPerPage) {
		int totalPage = totalProduct/productPerPage;
		if(totalProduct%productPerPage !=0) {
			totalPage++;
		}
		return totalPage;
	}
	
	/**
	 * Tổng số sản phẩm nằm trong category Big có id này
	 * @param id
	 * @return Tổng số sản phẩm
	 */
	public int getTotalProductByIdCategoryBig(Long id) {
		Optional<CategoryBig> cb = bigRepository.findById(id);

		List<Product> all = this.productRepository.findByCategoryBig(cb.get());

		return all.size();
	}

	/**
	 * Tổng số sản phẩm nằm trong category Small có id này
	 * @param id
	 * @return Tổng số sản phẩm
	 */
	public int getTotalProductByIdCategorySmall(Long id) {
		Optional<CategorySmall> cb = smallRepository.findById(id);

		List<Product> all = this.productRepository.findByCategorySmall(cb.get());

		return all.size();
	}

	/**
	 * Lấy các sản phẩm có name trong tên (dùng trong search)
	 * @param name
	 * @param page
	 * @param productPerPage
	 * @return
	 */
	public List<Product> getProductByProductName(String name, int page, int productPerPage) {
		Pageable firstPageWithSixElements = PageRequest.of(page - 1, productPerPage);
		String productName = "%" + name + "%";
		return this.productRepository.findByProductNameLike(productName, firstPageWithSixElements);
	}

	/**
	 * Lấy tổng sản phẩm có name trong tên (dùng trong search)
	 * @param name
	 * @return
	 */
	public int getTotalProductByName(String name) {

		String productName = "%" + name + "%";
		List<Product> all = this.productRepository.findByProductNameLike(productName);

		return all.size();
	}

	/**
	 * Lưu order vào csdl
	 * @param op
	 */
	public void saveOrderProduct(OrderProduct op) {
		this.orderProductRepository.save(op);
	}
	
	/**
	 * Lưu sản phẩm vào csdl
	 * @param product
	 */
	public void saveProduct(Product product) {
		this.productRepository.save(product);
	}

	/**
	 * Xóa sản phẩm khỏi csdl
	 * @param id
	 */
	public void deleteProductByid(long id) {
		this.productRepository.deleteById(id);
	}
	
	/**
	 * Chuyển dữ liệu ProductDTO về Product
	 * @param dto
	 * @return
	 */
	public Product returnDTOToProduct(ProductDTO dto) {
		Product result = new Product();
		
		result.setId(dto.getId());
		result.setProductName(dto.getProductName());
		result.setDescription(dto.getDescription());
		result.setPrice(dto.getPrice());
		result.setImg(dto.getImg());
		result.getDetails().add(new ImgDetail(dto.getSmall_img_1()));
		result.getDetails().add(new ImgDetail(dto.getSmall_img_2()));
		result.getDetails().add(new ImgDetail(dto.getSmall_img_3()));
		result.setCategoryBig(getCategoryBigByName(dto.getCategoryBig()));
		result.setCategorySmall(getCategorySmallByName(dto.getCategorySmall()));
		
		return result;
	}
	
	/**
	 * 			CATEGORY
	 */
	
	/**
	 * Lấy danh sách tất cả sản pẩm trong csdl
	 * @return
	 */
	public List<Product> getAllProduct() {
		return (List<Product>) this.productRepository.findAll();
	}

	/**
	 * Lấy danh sách tất cả các tên trong category Big
	 * @return
	 */
	public List<String> getAllCategoryBigName() {
		List<String> result = new ArrayList<>();
		for (CategoryBig category : this.bigRepository.findAll()) {
			result.add(category.getCategoryName());
		}
		return result;
	}

	/**
	 * Lấy danh sách tất cả các tên trong category Small
	 * @return
	 */
	public List<String> getAllCategorySmallName() {
		List<String> result = new ArrayList<>();
		for (CategorySmall category : this.smallRepository.findAll()) {
			result.add(category.getCategoryName());
		}
		return result;
	}
	
	/**
	 * Lấy ra CategoryBig bằng id
	 * @param id
	 * @return
	 */
	public CategoryBig getCategoryBigById(long id) {
		return this.bigRepository.findById(id).get();
	}

	/**
	 * Lấy ra CategoryBig bằng name
	 * @param id
	 * @return
	 */
	public CategoryBig getCategoryBigByName(String name) {
		return this.bigRepository.findByCategoryName(name);
	}

	/**
	 * Lấy ra CategorySmall bằng id
	 * @param id
	 * @return
	 */
	public CategorySmall getCategorySmallById(long id) {
		return this.smallRepository.findById(id).get();
	}

	/**
	 * Lấy ra CategorySmall bằng name
	 * @param id
	 * @return
	 */
	public CategorySmall getCategorySmallByName(String name) {
		return this.smallRepository.findByCategoryName(name);
	}

	
	/**
	 * 			ORDER PRODUCT
	 */
	
	/**
	 * Lấy danh sách tất cả các OrderProduct
	 * @return
	 */
	public List<OrderProduct> getAllOrder() {
		return (List<OrderProduct>) this.orderProductRepository.findAll();
	}

	/**
	 * Lấy OrderProduct ra bằng id
	 * @param id
	 * @return
	 */
	public OrderProduct getOrderProductById(long id) {
		return this.orderProductRepository.findById(id).get();
	}
	
	/**
	 * Lấy danh sách order có người dùng user
	 * @param user
	 * @return List<OrderProduct>
	 */
	public List<OrderProduct> getOrderProductByUser(User user) {
		return this.orderProductRepository.findByuserOrder(user);
	}
}
