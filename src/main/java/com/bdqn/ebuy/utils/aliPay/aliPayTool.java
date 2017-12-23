package com.bdqn.ebuy.utils.aliPay;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradeCreateRequest;
import com.alipay.api.response.AlipayTradeCreateResponse;

/**
 * Created by hp on 2017/12/22.
 */
public class aliPayTool {
    public static void main(String[] args) {
        AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do","app_id","your private_key","json","GBK","alipay_public_key","RSA2");
        AlipayTradeCreateRequest request = new AlipayTradeCreateRequest();
        request.setBizContent("{" +
                "\"out_trade_no\":\"20150320010101001\"," +
                "\"seller_id\":\"2088102146225135\"," +
                "\"total_amount\":88.88," +
                "\"discountable_amount\":8.88," +
                "\"subject\":\"Iphone616G\"," +
                "\"body\":\"Iphone616G\"," +
                "\"buyer_id\":\"2088102146225135\"," +
                "\"goods_detail\":[{" +
                "\"goods_id\":\"apple-01\"," +
                "\"goods_name\":\"ipad\"," +
                "\"quantity\":1," +
                "\"price\":2000," +
                "\"goods_category\":\"34543238\"," +
                "\"body\":\"特价手机\"," +
                "\"show_url\":\"http://www.alipay.com/xxx.jpg\"" +
                "}]," +
                "\"operator_id\":\"Yx_001\"," +
                "\"store_id\":\"NJ_001\"," +
                "\"terminal_id\":\"NJ_T_001\"," +
                "\"extend_params\":{" +
                "\"sys_service_provider_id\":\"2088511833207846\"" +
                "}," +
                "\"timeout_express\":\"90m\"," +
                "\"business_params\":\"{\\\"data\\\":\\\"123\\\"}\"" +
                "}");
        AlipayTradeCreateResponse response =null;
        try {
            response= alipayClient.execute(request);
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        if(response.isSuccess()){
            System.out.println("调用成功");
        } else {
            System.out.println("调用失败");
        }
    }
}
