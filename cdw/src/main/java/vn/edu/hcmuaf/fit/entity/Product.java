package vn.edu.hcmuaf.fit.entity;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

//import org.springframework.format.annotation.NumberFormat;
//import org.springframework.format.annotation.NumberFormat.Style;

@Entity
@Table(name="Product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "product_name", length = 128, nullable = false)
    private String productName;
		
	@Lob 
	@Column(name = "description", nullable = false)
    private String description;
	
	
	@Column(name = "price", length = 20, nullable = false)
	private float price;
	
	@Column(name = "img", length = 200, nullable = false)
	private String img;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="product_id", referencedColumnName = "id")
	List<ImgDetail> details = new ArrayList<>();
	
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "big_id", referencedColumnName = "id")
	private CategoryBig categoryBig;
	
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "small_id", referencedColumnName = "id")
	private CategorySmall categorySmall;
	
	@Column(name = "menu_id", length = 10, nullable = false)
	private int menuId;

	
	
	public Product(Long id, String productName, String description, float price, String img, List<ImgDetail> details,
			CategoryBig categoryBig, CategorySmall categorySmall, int menuId) {
		super();
		this.id = id;
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.img = img;
		this.details = details;
		this.categoryBig = categoryBig;
		this.categorySmall = categorySmall;
		this.menuId = menuId;
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public List<ImgDetail> getDetails() {
		return details;
	}


	public void setDetails(List<ImgDetail> details) {
		this.details = details;
	}


	public CategoryBig getCategoryBig() {
		return categoryBig;
	}


	public void setCategoryBig(CategoryBig categoryBig) {
		this.categoryBig = categoryBig;
	}


	public CategorySmall getCategorySmall() {
		return categorySmall;
	}


	public void setCategorySmall(CategorySmall categorySmall) {
		this.categorySmall = categorySmall;
	}


	public int getMenuId() {
		return menuId;
	}


	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public String currencyFormat(){
		Locale locale = new Locale("vi", "VN");
		NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
		String result = numberFormat.format(this.price);
		return result;
	}
	@Override
	public String toString() {
		return "id: " + getId() + ", productName: " + getProductName() + ", description: " + getDescription() + ", price: "
				+ getPrice() + ", img: " + getImg() +", imgDetail:"+ getDetails()+ ", bigCategory: " + getCategoryBig() + ", smallCategory: "
				+ getCategorySmall() + ", menuId: " + getMenuId();
	}
}
