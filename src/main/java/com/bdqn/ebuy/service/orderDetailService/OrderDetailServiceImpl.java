package com.bdqn.ebuy.service.orderDetailService;

import com.bdqn.ebuy.dao.orderDetial.OrderDetailMapper;
import com.bdqn.ebuy.pojo.OrderDetail;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by hp on 2017/12/21.
 */
@Service
public class OrderDetailServiceImpl implements OrderDetailService {
    @Resource
    private OrderDetailMapper orderDetailMapper;
    @Override
    public Integer addOrderDetail(OrderDetail orderDetail) {
        return orderDetailMapper.addOrderDetail(orderDetail);
    }
}
