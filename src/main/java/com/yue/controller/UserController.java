package com.yue.controller;

import com.yue.config.UploadFile;
import com.yue.domain.Project;
import com.yue.domain.User;
import com.yue.service.serviceimpl.UserServiceimpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserServiceimpl userServiceimpl;

    @GetMapping(value = "/my_project")
    public String person_all(Model model){
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        String user_name = user.getUsername();
        Project my_project = userServiceimpl.get_my_project(user_name);
        model.addAttribute("my_project",my_project);
        return "user_index";
    }
    @GetMapping(value = "/my_all_project")
    @ResponseBody
    public Map<String,Object> person_all(){
//        获取用户信息
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        String user_name = user.getUsername();

        Map<String,Object> map = new HashMap<>();

        List<Project> my_project = userServiceimpl.get_my_all_project(user_name);
        map.put("my_all_project",my_project);
        return map;
    }

    @PostMapping(value = "/submit")
    public String submit_project(Project project, @RequestParam("file") MultipartFile[] file, Model model){

        ArrayList<String> list  = new ArrayList<>();
//        传入文件到资源目录下
        if (file.length !=0){
            for (MultipartFile aFile : file){
                if (!aFile.isEmpty()){
                    list.add(project.getUsername()+aFile.getOriginalFilename());
                    Boolean aBoolean = UploadFile.httpUpload(project.getUsername(),aFile);
                    if (aBoolean){
                        model.addAttribute("filestate","文件上传成功！");
                    }else{
                        model.addAttribute("filesate","文件上传失败！");
                    }
                }
            }
        }
        if (!list.isEmpty()){
            String dateFile = String.join("*",list);//用*号分割所有文件命
            project.setDate(dateFile);
        }

        Boolean flag = userServiceimpl.submit_projict(project);//插入数据库
//        提示信息
        if(flag){
            model.addAttribute("msg","提交成功！");
        }
        else{
            model.addAttribute("msg","提交失败");
        }
        model.addAttribute("my_project",project);
        return "user_index";
    }
}
