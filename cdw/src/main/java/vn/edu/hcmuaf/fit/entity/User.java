package vn.edu.hcmuaf.fit.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import vn.edu.hcmuaf.fit.validation.*;

@Entity
@Table(name="User")
public class User {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@NotBlank(message = "username không được để trống")
//	@ValidationName
	
	@Column(name = "user_name", length = 128, nullable = false)
    private String userName;

	@NotBlank(message = "password không được để trống")
	
	@Column(name = "password", length = 128, nullable = false)
    private String password;
	
//	@DateTimeFormat(iso = ISO.DATE)
	@NotNull(message = "Ngày sinh không được trống")
	@ValidateDate
	
	@DateTimeFormat(iso = ISO.DATE) //nói rằng tham số phải được định dạng bằng Date(yyyy-mm-dd)
//    @Temporal(TemporalType.DATE)
    @Column(name = "birthday", nullable = false)
    private Date birthday;
    
    @NotBlank(message = "giới tính không được để trống")
    
    @Column(name = "sex", length = 5, nullable = false)
    private String sex;
    
    @NotBlank(message = "Email không được để trống")
    @Email(message = "Email không hợp lệ")
//    @ValidationEmail
    
    @Column(name = "email", length = 100, nullable = false)
    private String email;
    
    @NotBlank(message = "address không được để trống")
    
    @Column(name = "address", length = 100, nullable = false)
    private String address;

    @NotBlank(message = "phone không được để trống")
    
    @Column(name = "phone", length = 50, nullable = true)
    private String phone;
    
    
    @Column(name = "user_permission", length = 50, nullable = true)
    private String userPermission;
    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getBirthday() {
		return birthday;
	}
	
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	public String getUserPermission() {
		return this.userPermission;
	}

	public void setUserPermission(String user_permission) {
		this.userPermission = user_permission;
	}
	
	public String formatDate() {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			return sdf.format(this.birthday);
		}catch(NullPointerException e) {
			return "";
		}
	}
	@Override
	public String toString() {
		return "id: " + getId() + ", userName: " + getUserName() + ", password: " + getPassword() + ", birthday: " + getBirthday()
				+ ", sex: " + getSex() + ", email: " + getEmail() + ", address: " + getAddress() +", phone: "+ getPhone() +", permission: " +getUserPermission();
	}
    
    
}
