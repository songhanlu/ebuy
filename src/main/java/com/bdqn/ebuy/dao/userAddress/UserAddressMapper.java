package com.bdqn.ebuy.dao.userAddress;

import com.bdqn.ebuy.pojo.UserAddress;

import java.util.List;

/**
 * Created by lenovo on 2017/12/20.
 */
public interface UserAddressMapper {
    public List<UserAddress> queryAll();
    public List<UserAddress> queryAllByUserID(Integer userId);
    public Integer queryAdd(UserAddress userAddress);
    public Integer updateAddressByIdAndUserId(UserAddress userAddress);
    public Integer deleteAddressById(Integer id);
    UserAddress queryAddressById(Integer Id);
    //按userId查询默认地址
    UserAddress findByUserIDDefault(Integer userId);
}
