package com.mc.mapper;

import com.mc.pojo.TOrder;

public interface TOrderMapper {
    int insert(TOrder record);

    int insertSelective(TOrder record);
}