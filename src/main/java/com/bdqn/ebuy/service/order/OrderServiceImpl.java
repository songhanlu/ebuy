package com.bdqn.ebuy.service.order;

import com.bdqn.ebuy.dao.order.OrderMapper;
import com.bdqn.ebuy.pojo.Order;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by 大聪 on 2017/12/18.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderMapper orderMapper;
    //分页查询全部
    @Override
    public PageInfo<Order> queryAll(Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Order> list=orderMapper.queryAll();
        PageInfo<Order> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public PageInfo<Order> queryAll_2(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Order> list=orderMapper.queryAll_2();
        PageInfo<Order> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    //根据订单号查询
    @Override
    public Order queryAllBySerialNumber(String serialNumber) {
        return orderMapper.queryAllBySerialNumber(serialNumber);
    }
    //根据用户名模糊查询
    @Override
    public List<Order> queryAllByUserName(String userName) {
        return orderMapper.queryAllByUserName(userName);
    }
    //添加数据
    @Override
    public Integer addOrder(Order order) {
        //自动生成订单编号
        Date date = new Date();
        String temp = System.currentTimeMillis()+ RandomUtils.nextInt(1000000)+order.getUserId()+"";
        order.setSerialNumBer(temp);
        return orderMapper.addOrder(order);
    }

    //根据id修改地址
    @Override
    public Integer updateOrderUserAddress(Integer id, String userAddress) {
        return orderMapper.updateOrderUserAddress(id,userAddress);
    }
    //根据id假删除数据(修改visible状态)
    @Override
    public Integer deleteUpdateOrder(Integer id) {
        return orderMapper.deleteUpdateOrder(id);
    }

    @Override
    public List<Order> queryOrderNameBySerialNumber(String serialNumber) {
        return orderMapper.queryOrderNameBySerialNumber(serialNumber);
    }

    @Override
    public List<Order> q1() {
        return orderMapper.queryAll_2();
    }

    @Override
    public Integer totalCount() {
        return orderMapper.totalCount();
    }

    @Override
    public PageInfo<Order> queryAll_3(Integer pageNum, Integer pageSize, String loginName, String serialNumber) {
        PageHelper.startPage(pageNum,pageSize);
        List<Order> list = orderMapper.queryOrderByUserNameAndSerialNumber(loginName, serialNumber);
        PageInfo<Order> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public Order findOrderByID(Integer id) {
        return orderMapper.findOrderByID(id);
    }


}
