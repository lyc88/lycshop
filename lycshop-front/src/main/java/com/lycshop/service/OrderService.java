package com.lycshop.service;

import com.lycshop.HttpResult;
import com.lycshop.bean.Order;
import com.lycshop.bean.User;
import com.lycshop.threadlocal.UserThreadLocal;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class OrderService {

  /*  @Autowired
    private ApiService apiService;*/

    @Value("${TAOTAO_ORDER_URL}")
    private String TAOTAO_ORDER_URL;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    public String submit(Order order) {
      /*  String url = TAOTAO_ORDER_URL + "/order/create";
        try {
            // 查询user数据
            User user = UserThreadLocal.get();
            // 设置当前登录用户信息
            order.setBuyerNick(user.getUsername());
            order.setUserId(user.getId());

            HttpResult httpResult = this.apiService.doPostJson(url, MAPPER.writeValueAsString(order));
            if (httpResult.getStatusCode() == 200) {
                JsonNode jsonNode = MAPPER.readTree(httpResult.getData());
                if (jsonNode.get("status").asInt() == 200) {
                    // 订单提交成功
                    return jsonNode.get("data").asText();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        return null;
    }

    /**
     * 根据订单号查询订单数据
     * 
     * @param orderId
     * @return
     */
    public Order queryOrderById(String orderId) {
       /* try {
            String url = TAOTAO_ORDER_URL + "/order/query/" + orderId;
            String jsonData = this.apiService.doGet(url);
            if (StringUtils.isEmpty(jsonData)) {
                return null;
            }
            return MAPPER.readValue(jsonData, Order.class);
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        return null;
    }

}
