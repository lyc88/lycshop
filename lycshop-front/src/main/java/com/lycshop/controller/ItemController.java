package com.lycshop.controller;

import com.lycshop.ItemDesc;
import com.lycshop.bean.Item;
import com.lycshop.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@RequestMapping("item")
@Controller
public class ItemController {

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "{itemId}", method = RequestMethod.GET)
    public ModelAndView itemDetail(@PathVariable("itemId") Long itemId) {
        ModelAndView mv = new ModelAndView("item");
        Item item = this.itemService.queryItemById(itemId);
        mv.addObject("item", item);
        
        //查询商品描述数据
        ItemDesc itemDesc = this.itemService.queryItemDescByItemId(itemId);
        mv.addObject("itemDesc", itemDesc);
        
        String itemParam = this.itemService.queryItemParamByItemId(itemId);
        mv.addObject("itemParam", itemParam);
        return mv;
    }

}
