package com.lycshop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.lycshop.bean.Cart;
import com.lycshop.bean.Item;
import com.lycshop.bean.Order;
import com.lycshop.service.CartService;
import com.lycshop.service.ItemService;
import com.lycshop.service.OrderService;
import com.lycshop.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping("order")
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ItemService itemService;

    @Autowired
    private UserService userService;
    
    @Autowired
    private CartService cartService;

    @RequestMapping(value = "{itemId}", method = RequestMethod.GET)
    public ModelAndView toOrder(@PathVariable("itemId") Long itemId) {
        ModelAndView mv = new ModelAndView("order");
        Item item = this.itemService.queryItemById(itemId);
        mv.addObject("item", item);
        return mv;
    }

    /**
     * 基于购物车实现下单功能
     * 
     * @return
     */
    @RequestMapping(value = "create", method = RequestMethod.GET)
    public ModelAndView toCartOrder() {
        ModelAndView mv = new ModelAndView("order-cart");
        List<Cart> carts = this.cartService.queryCartListByUser();
        mv.addObject("carts", carts);
        return mv;
    }

    /**
     * 提交订单
     * 
     * @param order
     * @return
     */
    @RequestMapping(value = "submit", method = RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> submit(Order order) {
        try {
            Map<String, Object> result = new HashMap<String, Object>();
            String orderId = this.orderService.submit(order);
            if (StringUtils.isEmpty(orderId)) {
                // 提交订单失败
                result.put("status", 208);
            } else {
                // 提交订单成功
                result.put("status", 200);
                result.put("data", orderId);
            }
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

    @RequestMapping(value = "success", method = RequestMethod.GET)
    public ModelAndView success(@RequestParam("id") String orderId) {
        ModelAndView mv = new ModelAndView("success");

        // 设置模型数据
        Order order = this.orderService.queryOrderById(orderId);
        mv.addObject("order", order);
        // 当前时间向后推2天，01月02日
        mv.addObject("date", new DateTime().plusDays(2).toString("MM月dd日"));
        return mv;
    }

}
