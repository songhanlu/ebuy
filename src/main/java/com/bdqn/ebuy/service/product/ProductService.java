package com.bdqn.ebuy.service.product;

import com.bdqn.ebuy.pojo.EasybuyProduct;
import com.bdqn.ebuy.pojo.Product;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
public interface ProductService {
    List<Product> findProductByTypeID(Product product);
    Product findProductByID(Integer id);
    /*分页查询所有商品*/
    public PageInfo<EasybuyProduct> queryAllProduct(Integer pageNum, Integer pageSize);
    /*修改商品信息*/
    public Integer updateProduct(EasybuyProduct easybuyProduct);
    Integer countAllProduct();
    List<Product> queryProductBycategoryLevel1Id(Integer categoryLevel1Id);
    /*通过Id删除*/
    public Integer deleteproduct(Integer id);
    /*商品添加*/
    public Integer queryAddProduct(Product product);
    /**
     * 前台搜索模糊查询
     * @param name
     * @return
     */
    PageInfo<Product> queryProductByName(Integer pageNum,Integer pageSize,String name);
}
