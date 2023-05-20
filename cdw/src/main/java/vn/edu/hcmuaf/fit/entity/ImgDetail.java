package vn.edu.hcmuaf.fit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "img_detail")
public class ImgDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "img_name", length = 200, nullable = true)
	private String imgName;
	

	public ImgDetail() {
		
		
	}
	public ImgDetail(Long id, String imgName) {
		super();
		this.id = id;
		this.imgName = imgName;
	}
	public ImgDetail(String imgName) {
		super();
		this.imgName = imgName;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	@Override
	public String toString() {
		return "id: " + getId() + ", imgName: " + getImgName();
	}
	
	
}
