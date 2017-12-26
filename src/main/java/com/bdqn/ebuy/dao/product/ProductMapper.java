package com.bdqn.ebuy.dao.product;

import com.bdqn.ebuy.pojo.EasybuyProduct;
import com.bdqn.ebuy.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
public interface ProductMapper {
    List<Product> findProductByTypeID(@Param("product") Product product);
    Product findProductByID(Integer id);
    /*查询全部商品*/
    public List<EasybuyProduct> queryAllProduct();

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
    List<Product> queryProductByName(String name);
    public Integer updateVisible(Product product);
}
