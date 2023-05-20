package vn.edu.hcmuaf.fit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="category_big")
public class CategoryBig {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "category_name", length = 30, nullable = false)
	private String categoryName;

	public CategoryBig(Long id, String categoryName) {
		super();
		this.id = id;
		this.categoryName = categoryName;
	}
	public CategoryBig(String categoryName) {
		super();
		this.categoryName = categoryName;
	}
	public CategoryBig() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "id: " + getId() + ", categoryName: " + getCategoryName();
	}
//	@Override
//	public String toString() {
//		return getId() +". "+getCategoryName();
//	}
	
}
