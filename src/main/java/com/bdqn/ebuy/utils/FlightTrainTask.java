package com.bdqn.ebuy.utils;

import com.bdqn.ebuy.service.userAddress.UserAddressService;
import org.junit.runner.RunWith;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@Component
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class FlightTrainTask {
    @Resource
    private UserAddressService userAddressService;

    @Scheduled(cron = "0/10 * * * * ? ") // 间隔5秒执行
    public void taskCycle() {
        int i = userAddressService.deleteUserAddressByUserId();
        System.out.println(i);
    }


}