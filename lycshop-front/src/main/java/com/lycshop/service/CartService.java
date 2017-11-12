package com.lycshop.service;

import java.util.List;

import com.lycshop.bean.Cart;
import com.lycshop.threadlocal.UserThreadLocal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;


@Service
public class CartService {

   /* @Autowired
    private ApiService apiService;*/

    private static final ObjectMapper MAPPER = new ObjectMapper();

    @Value("${TAOTAO_CART_URL}")
    private String TAOTAO_CART_URL;

    public List<Cart> queryCartListByUser() {
       /* try {
            String url = TAOTAO_CART_URL + "/service/api/cart/" + UserThreadLocal.get().getId();
            String jsonData = this.apiService.doGet(url);
            if (null == jsonData) {
                return null;
            }
            return MAPPER.readValue(jsonData,
                    MAPPER.getTypeFactory().constructCollectionType(List.class, Cart.class));
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        return null;
    }

}
