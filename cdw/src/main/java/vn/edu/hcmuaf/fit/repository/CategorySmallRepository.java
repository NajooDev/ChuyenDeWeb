package vn.edu.hcmuaf.fit.repository;

import org.springframework.data.repository.CrudRepository;

import vn.edu.hcmuaf.fit.entity.CategorySmall;

public interface CategorySmallRepository extends CrudRepository<CategorySmall, Long> {

	public CategorySmall findByCategoryName(String categoryName);
}
