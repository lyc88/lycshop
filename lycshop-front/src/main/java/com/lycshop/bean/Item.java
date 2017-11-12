package com.lycshop.bean;

import org.apache.commons.lang3.StringUtils;

public class Item extends com.lycshop.Item {

    public String[] getImages() {
        return StringUtils.split(super.getImage(), ',');
    }

}
