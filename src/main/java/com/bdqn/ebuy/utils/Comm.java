package com.bdqn.ebuy.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by hp on 2017/12/18.
 */
public class Comm {
    public final static String CUR_USER = "cur_user";
    public static Map<String, String> success(){
        Map<String, String> message = new HashMap<>();
        message.put("code", "0000");
        message.put("message","操作成功");
        return message;
    }
    public static Map<String, String> failed(){
        Map<String, String> message = new HashMap<>();
        message.put("code", "0001");
        message.put("message","操作失败");
        return message;
    }
    public static Map<String, String> cannotDelPC(){
        Map<String, String> message = new HashMap<>();
        message.put("code", "0002");
        message.put("message","存在子分类，不能删除！");
        return message;
    }
    public static Map<String, String> fetchPassword(){
        Map<String, String> message = new HashMap<>();
        message.put("code", "0003");
        message.put("message","已发送新密码到您的邮箱，请及时更换您自己的密码");
        return message;
    }
}
