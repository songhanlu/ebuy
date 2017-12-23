package com.bdqn.ebuy.service.productCategory;

import com.bdqn.ebuy.pojo.ProductCategory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hp on 2017/12/19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:applicationContext.xml"})
public class ProductCategoryServiceImplTest {
    @Test
    public void findAllByParentID() throws Exception {
        int prarent = 661;
        List<ProductCategory> productCategories = productCategoryService.findAllByParentID(prarent);
        for (ProductCategory productCategory : productCategories) {
            System.out.println(productCategory);
        }
    }

    @Resource
    private ProductCategoryService productCategoryService;

    @Test
    public void findAllByType() throws Exception {
        int type = 1;
        List<ProductCategory> productCategories = productCategoryService.findAllByType(1);
        for (ProductCategory productCategory : productCategories) {
            System.out.println(productCategory);
        }
    }

}