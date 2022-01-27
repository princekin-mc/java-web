package com.mc.springcloud.dao;


import com.mc.springcloud.pojo.Dept;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface DeptDao {

    public boolean addDept(Dept dept);

    public Dept queryDeptById(Long id);

    public List<Dept> queryAllDept();

}
