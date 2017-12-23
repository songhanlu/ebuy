package com.bdqn.ebuy.service.productCategory;

import com.bdqn.ebuy.dao.productCategory.ProductCategoryMapper;
import com.bdqn.ebuy.pojo.ProductCategory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {
    @Resource
    private ProductCategoryMapper productCategoryMapper;

    @Override
    public List<ProductCategory> findAllByType(Integer type) {
        return productCategoryMapper.findAllByType(type);
    }

    @Override
    public List<ProductCategory> findAllByParentID(Integer parentId) {
        return productCategoryMapper.findAllByParentID(parentId);
    }

    @Override
    public List<ProductCategory> findAll() {
        return productCategoryMapper.findAll();
    }

    @Override
    public ProductCategory findByID(Integer id) {
        return productCategoryMapper.findByID(id);
    }

    @Override
    public Integer add(ProductCategory productCategory) {
        return productCategoryMapper.add(productCategory);
    }

    @Override
    public Integer del(Integer id) {
        return productCategoryMapper.del(id);
    }

    @Override
    public Integer countByParentID(Integer parentId) {
        return productCategoryMapper.countByParentID(parentId);
    }
}
