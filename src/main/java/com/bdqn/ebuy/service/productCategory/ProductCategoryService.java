package com.bdqn.ebuy.service.productCategory;

import com.bdqn.ebuy.pojo.ProductCategory;

import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
public interface ProductCategoryService {
    List<ProductCategory> findAllByType(Integer type);
    List<ProductCategory> findAllByParentID(Integer parentId);
    List<ProductCategory> findAll();
    ProductCategory findByID(Integer id);
    Integer add(ProductCategory productCategory);
    Integer del(Integer id);
    Integer countByParentID(Integer parentId);
}
