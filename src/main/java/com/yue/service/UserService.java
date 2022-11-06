package com.yue.service;

import com.yue.domain.Project;
import com.yue.domain.User;

public interface UserService {
    Project get_my_project(String name);
    User do_login(String username);
    Boolean submit_projict(Project project);
}
