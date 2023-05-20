package vn.edu.hcmuaf.fit;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import vn.edu.hcmuaf.fit.entity.CategoryBig;
import vn.edu.hcmuaf.fit.repository.CategoryBigRepository;

@SpringBootApplication
//@ComponentScan("vn.edu.hcmuaf.fit")
public class CdwApplication implements CommandLineRunner{

	public static void main(String[] args){
		SpringApplication.run(CdwApplication.class, args);
	}

	@Autowired CategoryBigRepository bigRepository;

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		
		//phải get trước rồi mới update được
		//Optional<CategoryBig> cb = bigRepository.findById((long) 9);
//		CategoryBig cb = new CategoryBig("Thức ăn cho chó");
		//cb.get().setCategoryName("Najoo");
		
		//bigRepository.save(cb.get()); //nếu vẫn trùng id thì nó sẽ update lại những cái thay đổi
	}
	
	
}
