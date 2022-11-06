package com.yue.service.serviceimpl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.yue.dao.ProjectDao;
import com.yue.dao.UserDao;
import com.yue.domain.Project;
import com.yue.domain.User;
import com.yue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceimpl implements UserService {
    @Autowired
    private ProjectDao projectDao;
    @Autowired
    private UserDao userDao;
    @Override
    public Project get_my_project(String name) {
        LambdaQueryWrapper<Project> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Project::getUserUsername,name).orderByDesc(Project::getSubmitTime);
        return projectDao.selectList(wrapper).get(0);
    }

    @Override
    public User do_login(String username) {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("username",username);
        return userDao.selectOne(wrapper);
    }

    @Override
    public Boolean submit_projict(Project project) {
        try{
            projectDao.insert(project);
        }catch (Exception e){
            System.out.println(e);
            return false;
        }
        return true;
    }

}
