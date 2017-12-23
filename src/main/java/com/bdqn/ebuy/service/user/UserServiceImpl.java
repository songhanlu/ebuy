package com.bdqn.ebuy.service.user;

import com.bdqn.ebuy.dao.user.UserMapper;
import com.bdqn.ebuy.pojo.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangheng on 2017/12/18.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    public Integer addUser(User user) {
        return userMapper.addUser(user);
    }

    public Integer deleteUserById(Integer id) {
        return userMapper.deleteUserById(id);
    }

    public Integer updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User detailUser(Integer id) {
        return userMapper.detailUser(id);
    }

    public PageInfo<User> queryAll(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> list=userMapper.queryAll();
        PageInfo<User> pageInfo=new PageInfo<User>(list);
        return pageInfo;
    }

    public User login(User user) {
        return userMapper.login(user);
    }

    public User queryUserByLoginName(String loginName) {
        return userMapper.queryUserByLoginName(loginName);
    }

    public Integer queryCount() {
        return userMapper.queryCount();
    }

    @Override
    public User beforeLogin(String loginName, String password) {
        return userMapper.beforeLogin(loginName,password);
    }

    @Override
    public Integer beforeRegister(User user) {
        return userMapper.beforeRegister(user);
    }


}
