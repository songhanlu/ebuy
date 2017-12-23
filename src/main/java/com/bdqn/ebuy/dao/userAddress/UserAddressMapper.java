package com.bdqn.ebuy.dao.userAddress;

import com.bdqn.ebuy.pojo.UserAddress;

import java.util.List;

/**
 * Created by lenovo on 2017/12/20.
 */
public interface UserAddressMapper {
    List<UserAddress> queryAll();
    List<UserAddress> queryAllByUserID(Integer userId);
    Integer queryAdd(UserAddress userAddress);
    Integer updateAddressByIdAndUserId(UserAddress userAddress);
    Integer deleteAddressById(Integer id);
    UserAddress queryAddressById(Integer Id);
    //按userId查询默认地址
    UserAddress findByUserIDDefault(Integer userId);
    //按用户ID删除地址（真删除）
    public Integer deleteAddressByuserId(Integer Userid);
}
