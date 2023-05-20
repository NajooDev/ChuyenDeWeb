package vn.edu.hcmuaf.fit.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;


import vn.edu.hcmuaf.fit.entity.CategoryBig;
import vn.edu.hcmuaf.fit.entity.CategorySmall;
import vn.edu.hcmuaf.fit.entity.Product;

public interface ProductRepository extends PagingAndSortingRepository<Product, Long> {

	@Query("SELECT coalesce(max(e.id), 0) FROM Product e")
	 Long getMaxId();
	
	List<Product> findByPrice(int price);
	
	List<Product> findByCategoryBig(CategoryBig big,Pageable pageable);  
	
	List<Product> findByCategoryBig(CategoryBig big);  
	
	List<Product> findByCategorySmall(CategorySmall small,Pageable pageable);  
	
	List<Product> findByCategorySmall(CategorySmall small);  
	
	List<Product> findByProductNameLike(String productName,Pageable pageable);
	
	List<Product> findByProductNameLike(String productName);
}
