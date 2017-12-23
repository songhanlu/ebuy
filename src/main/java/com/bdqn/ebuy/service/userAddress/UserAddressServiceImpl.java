package com.bdqn.ebuy.service.userAddress;

import com.bdqn.ebuy.dao.user.UserMapper;
import com.bdqn.ebuy.dao.userAddress.UserAddressMapper;
import com.bdqn.ebuy.pojo.User;
import com.bdqn.ebuy.pojo.UserAddress;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/12/20.
 */
@Service("userAdderssService")
public class UserAddressServiceImpl implements UserAddressService {
    @Resource
    private UserAddressMapper userAddressMapper;
    @Resource
    private UserMapper userMapper;



    @Override
    public List<UserAddress> queryAll() {
        return userAddressMapper.queryAll();
    }

    @Override
    public List<UserAddress> queryAllByUserID(Integer userId) {
        return userAddressMapper.queryAllByUserID(userId);
    }

    @Override
    public Integer queryAdd(UserAddress userAddress) {
        return userAddressMapper.queryAdd(userAddress);
    }

    @Override
    public Integer updateAddressByIdAndUserId(UserAddress userAddress) {
        return userAddressMapper.updateAddressByIdAndUserId(userAddress);
    }

    @Override
    public Integer deleteAddressById(Integer id) {
        return userAddressMapper.deleteAddressById(id);
    }

    @Override
    public UserAddress queryAddressById(Integer Id) {
        return userAddressMapper.queryAddressById(Id);
    }

    @Override
    public UserAddress findByUserIDDefault(Integer userId) {
        return userAddressMapper.findByUserIDDefault(userId);
    }

    @Override
    public Integer deleteUserAddressByUserId() {
        List<UserAddress> userRessList= new ArrayList<>();
        List<Integer> userIdList=new ArrayList<>();
        List<Integer> deleteId=new ArrayList<>();
        Integer count = 0;
        userRessList= userAddressMapper.queryAll();
        for (UserAddress address : userRessList) {
            userIdList.add(address.getUserId());
        }
        for (Integer userId : userIdList) {
            User userList = userMapper.detailUser(userId);
            if (userList.getVisible()==0) {
                deleteId.add(userId);
            }
        }
        for (Integer integer : deleteId) {
            count =  userAddressMapper.deleteAddressByuserId(integer);
        }

        return count;
    }
}
