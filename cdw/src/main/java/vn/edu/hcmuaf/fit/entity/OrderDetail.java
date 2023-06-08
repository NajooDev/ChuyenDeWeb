package vn.edu.hcmuaf.fit.entity;

import java.text.NumberFormat;
import java.util.Date;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="OrderDetail")
public class OrderDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@OneToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "product_id", referencedColumnName = "id")
	private Product productOrder;
	
	@Column(name = "price", length = 20, nullable = false)
	private float price;
	
	@Column(name = "quality", length = 20, nullable = false)
	private int quality;
	
	@Temporal(TemporalType.DATE)
    @Column(name = "day_order", nullable = false)
    private Date dayOrder;

	
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}
	
	public OrderDetail(Product product) {
		this.productOrder = product;
		this.quality = 1;
		this.dayOrder = new Date();
		
		setPrice();
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Product getProductOrder() {
		return productOrder;
	}

	public void setProductOrder(Product productOrder) {
		this.productOrder = productOrder;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public void setPrice() {
		this.price = this.productOrder.getPrice()* this.quality;
	}
	
	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public void addQuality(int number) {
		this.quality += number;
	}
	
	public Date getDayOrder() {
		return dayOrder;
	}

	public void setDayOrder(Date dayOrder) {
		this.dayOrder = dayOrder;
	}
	
	public void setDayOrder() {
		Date date = new Date();
		this.dayOrder = date;
	}
	public String currencyFormat(){
		Locale locale = new Locale("vi", "VN");
		NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
		String result = numberFormat.format(this.price);
		return result;
	}
	@Override
	public String toString() {
		return "id: " + id + ", productOrder: " + productOrder + ", price: " + price + ", quality: " + quality +", day order: " +dayOrder;
	}
	
	
}