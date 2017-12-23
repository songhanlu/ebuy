package com.bdqn.ebuy.service.order;

import com.bdqn.ebuy.pojo.Order;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 大聪 on 2017/12/18.
 */
public interface OrderService {
    /**
     * 分页查询全部
     * @return
     */
    PageInfo<Order> queryAll(Integer pageNum, Integer pageSize);
    PageInfo<Order> queryAll_2(Integer pageNum, Integer pageSize);
    /**
     * 根据订单号查询
     * @param serialNumber
     * @return
     */
    Order queryAllBySerialNumber(String serialNumber);
    /**
     * 根据用户名模糊查询
     * @param userName
     * @return
     */
    List<Order> queryAllByUserName(String userName);
    /**
     * 添加数据
     * @param order
     * @return
     */
    Integer addOrder(Order order);

    /**
     * 根据id修改地址
     * @param id
     * @param userAddress
     * @return
     */
    Integer updateOrderUserAddress(@Param("id") Integer id,
                                   @Param("userAddress") String userAddress);

    /**
     * 根据id假删除数据(修改visible状态)
     * @param id
     * @return
     */
    Integer deleteUpdateOrder(@Param("id") Integer id);

    /**
     * 根据订单号查看订单详情
     * @param serialNumber
     * @return
     */
    List<Order> queryOrderNameBySerialNumber(@Param("serialNumber") String serialNumber);
    List<Order> q1();
    Integer totalCount();
    PageInfo<Order> queryAll_3(Integer pageNum, Integer pageSize,
                               String loginName,String serialNumber);
    Order findOrderByID(Integer id);
}
