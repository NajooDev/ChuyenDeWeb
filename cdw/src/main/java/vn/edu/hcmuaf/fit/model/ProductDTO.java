package vn.edu.hcmuaf.fit.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import vn.edu.hcmuaf.fit.entity.Product;

public class ProductDTO {

	private Long id;
	
	@NotBlank(message = "Tên sản phẩm không được để trống")
    private String productName;
	
	@NotBlank(message = "description không được để trống")
	private String description;
	
	@NotNull
	@Min(value = 1_000)
	
	private float price;
	
	@NotBlank(message = "img không được để trống")
	private String img;
	
	private String small_img_1;
	
	private String small_img_2;
	
	private String small_img_3;
	
	private String categoryBig;
	
	private String categorySmall;

	
	public ProductDTO() {
		
	}
	
	public ProductDTO(Product p) {
		this.id = p.getId();
		this.productName = p.getProductName();
		this.description = p.getDescription();
		this.price = p.getPrice();
		this.img = p.getImg();
		this.categoryBig = p.getCategoryBig().getCategoryName();
		this.categorySmall = p.getCategorySmall().getCategoryName();
		
		this.small_img_1 = p.getDetails().get(0).getImgName();
		this.small_img_2 = p.getDetails().get(1).getImgName();
		this.small_img_3 = p.getDetails().get(2).getImgName();
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

	public String getCategoryBig() {
		return categoryBig;
	}

	public void setCategoryBig(String categoryBig) {
		this.categoryBig = categoryBig;
	}

	public String getCategorySmall() {
		return categorySmall;
	}

	public void setCategorySmall(String categorySmall) {
		this.categorySmall = categorySmall;
	}
	
	public String getSmall_img_1() {
		return small_img_1;
	}

	public void setSmall_img_1(String small_img_1) {
		this.small_img_1 = small_img_1;
	}

	public String getSmall_img_2() {
		return small_img_2;
	}

	public void setSmall_img_2(String small_img_2) {
		this.small_img_2 = small_img_2;
	}

	public String getSmall_img_3() {
		return small_img_3;
	}

	public void setSmall_img_3(String small_img_3) {
		this.small_img_3 = small_img_3;
	}
	@Override
	public String toString() {
		return "id: " + getId() + ", productName: " + getProductName() + ", description: " + getDescription() + ", price: "
				+ getPrice() + ", img: " + getImg() +", imgDetail_1:"+ getSmall_img_1()+ ", imgDetail_2:"+ getSmall_img_2()+", imgDetail_3:"+ getSmall_img_3()+", bigCategory: " + getCategoryBig() + ", smallCategory: "
				+ getCategorySmall();
	}
}
