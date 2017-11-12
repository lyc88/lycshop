package com.lycshop.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lycshop.ItemCatResult;
import com.lycshop.service.ItemCatService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@RequestMapping("api/item/cat")
@Controller
public class ApiItemCatController {

    @Autowired
    private ItemCatService itemCatService;
    
    private static final ObjectMapper MAPPER = new ObjectMapper();

    /**
     * 按照前端的数据结构查询所有的商品类目数据
     * 
     * @return
     */
   /* @RequestMapping(value = "all", method = RequestMethod.GET,produces="text/html;charset=UTF-8")
    @ResponseBody
    public String queryItemCatAll(@RequestParam(value = "callback",required = false) String callback) {
        try {
            ItemCatResult itemCatResult = this.itemCatService.queryAllToTree();
            String json = MAPPER.writeValueAsString(itemCatResult);
            //json = new String(json.getBytes("ISO-8859-1"),"UTF-8");
            if(StringUtils.isEmpty(callback)){
                return json;
            }
            return callback + "("+json+")";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }*/
    
    @RequestMapping(value = "all", method = RequestMethod.GET)
    public ResponseEntity<ItemCatResult> queryItemCatAll() {
        try {
            ItemCatResult itemCatResult = this.itemCatService.queryAllToTree();
            return ResponseEntity.ok(itemCatResult);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

}
