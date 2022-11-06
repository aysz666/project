package com.yue.controller;

import com.yue.config.UploadFile;
import com.yue.domain.Project;
import com.yue.service.serviceimpl.AdminSeviceimpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//管理员业务

@Controller
@RequestMapping("/admins")
public class AdminController {
    @Autowired
    private AdminSeviceimpl adminSeviceimpl;
    @GetMapping("/all")
    public String all_project(Model model){
        List<Project> projects = adminSeviceimpl.get_all_project();

        model.addAttribute("all_project",projects);
        return "admin_index";
    }
    @GetMapping("/success")
    @ResponseBody
    public Map<String,Object> success_project(){
        List<Project> projects = adminSeviceimpl.get_success_project();
        Map<String, Object> map = new HashMap<>();
        map.put("success_project",projects);
        return map;
    }
    @RequestMapping("search_project")
    @ResponseBody
    public Map<String,Object> search_project(@RequestBody Map<String,Object> maps){
        String projectName = (String) maps.get("projectName");
        Map<String ,Object> map = new HashMap<>();
        List<Project> projects = adminSeviceimpl.search_project(projectName);
        map.put("search_project",projects);

        return map;
    }
    @PostMapping("/do_project")
    @ResponseBody
    public Map<String,Object> handle_project(@RequestBody Map<String,Object> map, Model model){
        String id = String.valueOf(map.get("id"));
        String suggestion = String.valueOf(map.get("suggestion"));
        String state= String.valueOf(map.get("state"));
        Map<String,Object> maps = new HashMap<>();
        if (adminSeviceimpl.dosu_project(id,suggestion,state)){
            maps.put("msg","处理成功！");
            model.addAttribute("msg","处理成功！");
        }else {
            maps.put("msg","处理失败！");
            model.addAttribute("msg","处理失败！");
        }
        return maps;
    }
    @RequestMapping("/get_date")
    public void get_date(String documentName, HttpServletResponse response,Model model){

        Boolean aBoolean = UploadFile.fileDownLoad(response, documentName);
        if (aBoolean){
            model.addAttribute("msg","文件请求下载成功！");
        }else{

            model.addAttribute("msg","下载请求失败！");
        }
    }
}
