package com.bdqn.ebuy.pojo;

import java.util.Date;

/**
 *   `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
 `userId` int(255) DEFAULT NULL COMMENT '用户主键',
 `address` varchar(255) DEFAULT NULL COMMENT '地址',
 `createTime` datetime DEFAULT NULL COMMENT '创建时间',
 `isDefault` int(2) DEFAULT '0' COMMENT '是否是默认地址（1:是 0否）',
 `remark` varchar(255) DEFAULT NULL COMMENT '备注',
 `visible` int(1) DEFAULT '1' COMMENT '是否删除(0：删除 1：未删除)',
 */

public class UserAddress {
    /*主键 用户主键 是否是默认地址1：是 0：否 是否删除 0：是 1：否*/
    private Integer id,userId,isDefault,visble;
    /*地址 备注*/
    private String address,remark;
    /*创建时间*/
    private Date createTime;

    @Override
    public String toString() {
        return "UserAddress{" +
                "id=" + id +
                ", userId=" + userId +
                ", isDefault=" + isDefault +
                ", visble=" + visble +
                ", address='" + address + '\'' +
                ", remark='" + remark + '\'' +
                ", createTime=" + createTime +
                '}';
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

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    public Integer getVisble() {
        return visble;
    }

    public void setVisble(Integer visble) {
        this.visble = visble;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
