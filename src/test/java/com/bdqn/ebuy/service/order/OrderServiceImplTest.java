package com.bdqn.ebuy.service.order;

import com.bdqn.ebuy.pojo.Order;
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
public class OrderServiceImplTest {
    @Resource
    private OrderService orderService;

    @Test
    public void q1() throws Exception {
        List<Order> orders = orderService.q1();
        for (Order order : orders) {
            System.out.println(order);
        }
    }

}