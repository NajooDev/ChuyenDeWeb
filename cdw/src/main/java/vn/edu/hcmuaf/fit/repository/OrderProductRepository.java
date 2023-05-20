package vn.edu.hcmuaf.fit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.edu.hcmuaf.fit.entity.OrderProduct;
import vn.edu.hcmuaf.fit.entity.User;

public interface OrderProductRepository extends CrudRepository<OrderProduct, Long> {

	List<OrderProduct> findByuserOrder(User user);
}
