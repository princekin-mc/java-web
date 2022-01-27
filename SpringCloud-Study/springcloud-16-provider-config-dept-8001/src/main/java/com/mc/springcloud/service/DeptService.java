package com.mc.springcloud.service;

import com.mc.springcloud.pojo.Dept;

import java.util.List;

public interface DeptService {
    public boolean addDept(Dept dept);

    public Dept queryDeptById(Long id);

    public List<Dept> queryAllDept();
}
