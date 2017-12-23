package com.bdqn.ebuy.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;
import java.util.List;

/**
 * Created by 大聪 on 2017/12/18.
 */
public class Order {
    /**
     * idint(11) NOT NULL主键
     userIdint(255) NULL用户主键
     loginNamevarchar(255) NULL
     userAddressvarchar(255) NULL用户地址
     createTimedatetime NULL创建时间
     costfloat NULL总消费
     serialNumbervarchar(255) NULL订单号
     */

    private Integer id;//订单id
    private Integer userId;//用户id
    private String loginName;//用户姓名
    private String userAddress;//用户地址
    //@DateTimeFormat(pattern = "yyyy-MM-dd")
    @JSONField(format = "yyyy-MM-dd")
    private Date createTime;//创建时间
    private float cost;//总消费
    private String serialNumBer;//订单号
    private Integer visible;//假删除 类型为1为显示 0为删除

    private List<OrderDetail> orderDetail;

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", userId=" + userId +
                ", loginName='" + loginName + '\'' +
                ", userAddress='" + userAddress + '\'' +
                ", createTime=" + createTime +
                ", cost=" + cost +
                ", serialNumBer='" + serialNumBer + '\'' +
                ", visible=" + visible +
                ", orderDetail=" + orderDetail +
                '}';
    }

    public Order() {
    }

    public Order(Integer id, Integer userId, String loginName, String userAddress, Date createTime, float cost, String serialNumBer, Integer visible) {
        this.id = id;
        this.userId = userId;
        this.loginName = loginName;
        this.userAddress = userAddress;
        this.createTime = createTime;
        this.cost = cost;
        this.serialNumBer = serialNumBer;
        this.visible = visible;
    }

    public Integer getVisible() {
        return visible;
    }

    public void setVisible(Integer visible) {
        this.visible = visible;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getSerialNumBer() {
        return serialNumBer;
    }

    public void setSerialNumBer(String serialNumBer) {

        this.serialNumBer = serialNumBer;
    }

    public List<OrderDetail> getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(List<OrderDetail> orderDetail) {
        this.orderDetail = orderDetail;
    }
}
