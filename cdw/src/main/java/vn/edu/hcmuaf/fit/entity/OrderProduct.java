package vn.edu.hcmuaf.fit.entity;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="OrderProduct") //bảng order không hiểu tại sao tạo không được nên phải thay bằng orderProduct
public class OrderProduct {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@OneToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
	private User userOrder;
	
	@Column(name = "statusOrder", length = 10, nullable = false)
	private int statusOrder;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="order_id", referencedColumnName = "id")
	List<OrderDetail> Orderdetails = new ArrayList<>();

	@Column(name = "totalPrice", length = 10, nullable = false)
	private float totalPrice;
	
	@Column(name = "otherAddress", length = 100, nullable = true)
	private String otherAddress;
	
	public OrderProduct() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public User getUserOrder() {
		return userOrder;
	}



	public void setUserOrder(User userOrder) {
		this.userOrder = userOrder;
	}



	public int getStatusOrder() {
		return statusOrder;
	}



	public void setStatusOrder(int statusOrder) {
		this.statusOrder = statusOrder;
	}



	public List<OrderDetail> getOrderdetails() {
		return Orderdetails;
	}



	public void setOrderdetails(List<OrderDetail> Orderdetails) {
		this.Orderdetails = Orderdetails;
	}

	public void putOrderDetail(OrderDetail od) {
		this.Orderdetails.add(od);
	}
	public String getOtherAddress() {
		return otherAddress;
	}

	public void setOtherAddress(String otherAddress) {
		this.otherAddress = otherAddress;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public void setTotalPrice() {
		float price = 0;
		for(OrderDetail od :Orderdetails) {
			price += od.getPrice();
		}
		this.totalPrice = price;
	}
	
	public int getTotalOrder() {
		int result = 0;
		if(!Orderdetails.isEmpty()) {
			result = Orderdetails.size();
		}
		System.out.println(result);
		return result;
	}
	
	
	public boolean alreadyHaveProduct(Product p) {
		for(OrderDetail od :Orderdetails) {
			if(od.getProductOrder().getId() == p.getId()) {
				return true;
			}
		}
		return false;
	}
	
	
	public OrderDetail findOrderDetailByProduct(Product p) {
		for(OrderDetail od :Orderdetails) {
			if(od.getProductOrder().getId() == p.getId()) {
				return od;
			}
		}
		return null;
	}
	
	public void deleteOrderDetailByProduct(Product p) {
		for(OrderDetail od :Orderdetails) {
			if(od.getProductOrder().getId() == p.getId()) {
				Orderdetails.remove(od);
				return ;
			}
		}
	}
	
	public int status(String s) {
		
		switch (s) {
		case "Đang giao":
			return 1;
		case "Đã giao":
			return 2;
		case "Hủy giao":
			return 3;
		}
		return 1;
	}
	
	/*
	 * public Date getDate() {
	 * 
	 * return this.getOrderdetails().get(0).getDayOrder(); }
	 */
	public String currencyFormat(){
		Locale locale = new Locale("vi", "VN");
		NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
		String result = numberFormat.format(this.totalPrice);
		return result;
	}
	@Override
	public String toString() {
		return "id: " + id + ", userOrder: " + userOrder + ", status: " + statusOrder + ", details: " + Orderdetails +", totalPrice: "+ totalPrice +", otherAddress: "+ otherAddress;
	}
	
	
	public static void main(String[] args) {
		OrderProduct op = new OrderProduct();
		
		Product p = new Product((long)2, "product 1", "description 1", 1000, "img 1", null, null, null, 0);
		OrderDetail od = new OrderDetail();
		od.setProductOrder(p);
		
		op.putOrderDetail(od);
		
		System.out.println(op.alreadyHaveProduct(p));
		System.out.println(op);
	}
}
