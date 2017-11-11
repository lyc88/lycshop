package com.lycshop.mapper;

import java.util.List;

import com.github.abel533.mapper.Mapper;
import com.lycshop.Content;


public interface ContentMapper extends Mapper<Content> {

    List<Content> queryListBycategoryId(Long categoryId);

}
