package vn.edu.hcmuaf.fit.repository;

import org.springframework.data.repository.CrudRepository;

import vn.edu.hcmuaf.fit.entity.ImgDetail;

public interface ImgDetailRepository extends CrudRepository<ImgDetail, Long> {
	
	public void deleteByImgName(String imgName);
}
