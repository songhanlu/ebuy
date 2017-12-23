package com.bdqn.ebuy.dao.productCategory;

import com.bdqn.ebuy.pojo.ProductCategory;

import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
public interface ProductCategoryMapper {
    List<ProductCategory> findAllByType(Integer type);
    List<ProductCategory> findAllByParentID(Integer parentId);
    List<ProductCategory> findAll();
    ProductCategory findByID(Integer id);
    Integer add(ProductCategory productCategory);
    Integer update(ProductCategory productCategory);
    Integer del(Integer id);
    Integer countByParentID(Integer parentId);
}
