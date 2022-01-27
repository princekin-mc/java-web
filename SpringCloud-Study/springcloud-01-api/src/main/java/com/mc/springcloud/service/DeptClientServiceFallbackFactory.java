package com.mc.springcloud.service;

import com.mc.springcloud.pojo.Dept;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;

//降级
@Component
public class DeptClientServiceFallbackFactory implements FallbackFactory {
    @Override
    public DeptClientService create(Throwable throwable) {
        return new DeptClientService() {
            @Override
            public boolean addDept(Dept dept) {
                return false;
            }

            @Override
            public Dept queryDeptById(Long id) {
                return new Dept()
                        .setDeptno(id)
                        .setDname("id=>"+id+"没有对应的信息，客户端提供了降级的信息，这个服务现在已经被关闭~")
                        .setDb_source("没有数据~");
            }

            @Override
            public List<Dept> queryAllDept() {
                List<Dept> depts = new ArrayList<Dept>();
                depts.add(new Dept()
                        .setDeptno(0l)
                        .setDname("没有对应的信息，客户端提供了降级的信息，这个服务现在已经被关闭~")
                        .setDb_source("没有数据集合~")
                );
                return depts;
            }
        };
    }
}
