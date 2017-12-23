package com.bdqn.ebuy.service.userAddress;

import com.bdqn.ebuy.dao.userAddress.UserAddressMapper;
import com.bdqn.ebuy.pojo.UserAddress;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/12/20.
 */
@Service("userAdderssService")
public class UserAddressServiceImpl implements UserAddressService {
    @Resource
    private UserAddressMapper userAddressMapper;
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
}
