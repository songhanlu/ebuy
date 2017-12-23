package com.bdqn.ebuy.service.product;

import com.bdqn.ebuy.dao.product.ProductMapper;
import com.bdqn.ebuy.pojo.EasybuyProduct;
import com.bdqn.ebuy.pojo.Product;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Resource
    private ProductMapper productMapper;

    @Override
    public List<Product> findProductByTypeID(Product product) {
        return productMapper.findProductByTypeID(product);
    }

    @Override
    public Product findProductByID(Integer id) {
        return productMapper.findProductByID(id);
    }

    @Override
    public PageInfo<EasybuyProduct> queryAllProduct(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<EasybuyProduct> list=productMapper.queryAllProduct();
        PageInfo<EasybuyProduct> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public Integer updateProduct(EasybuyProduct easybuyProduct) {
        return productMapper.updateProduct(easybuyProduct);
    }

    @Override
    public Integer countAllProduct() {
        return productMapper.countAllProduct();
    }

    @Override
    public List<Product> queryProductBycategoryLevel1Id(Integer categoryLevel1Id) {
        return productMapper.queryProductBycategoryLevel1Id(categoryLevel1Id);
    }

    @Override
    public Integer deleteproduct(Integer id) {
        return productMapper.deleteproduct(id);
    }

    @Override
    public Integer queryAddProduct(Product product) {
        return productMapper.queryAddProduct(product);
    }

    @Override
    public PageInfo<Product> queryProductByName(Integer pageNum, Integer pageSize, String name) {
        PageHelper.startPage(pageNum, pageSize);
        List<Product> list = productMapper.queryProductByName(name);
        PageInfo<Product> pageInfo = new PageInfo<Product>(list);
        return pageInfo;
    }

}
