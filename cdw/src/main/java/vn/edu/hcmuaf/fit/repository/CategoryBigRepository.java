package vn.edu.hcmuaf.fit.repository;

import org.springframework.data.repository.CrudRepository;

import vn.edu.hcmuaf.fit.entity.CategoryBig;

public interface CategoryBigRepository extends CrudRepository<CategoryBig, Long> {
	
	public CategoryBig findByCategoryName(String categoryName);
}
