package com.bdqn.ebuy.service.product;

import com.bdqn.ebuy.pojo.Product;
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
public class ProductServiceImplTest {
    @Resource
    private ProductService productService;
    @Test
    public void findProductByTypeID() throws Exception {
        Product product = new Product();
        product.setCategoryLevel1Id(628);
        List<Product> pros = productService.findProductByTypeID(product);
        for (Product pro : pros) {
            System.out.println(pro);
        }
    }

}