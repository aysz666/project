package com.yue.config;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig{
    @Bean
    public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("getDefaultWebSecurityManager") DefaultWebSecurityManager securityManager){
        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
//        安全管理
        bean.setSecurityManager(securityManager);
//设置拦截
        Map<String,String> filterMap = new LinkedHashMap<>();
        /*
        anon    无需认证
        authc   认证
        user    记住我
        perms   权限
        roles   角色
         */

        filterMap.put("/","anon");
        filterMap.put("/users/*","perms[user]");
        filterMap.put("/admins/*","perms[admin]");

        bean.setFilterChainDefinitionMap(filterMap);
        bean.setLoginUrl("/toLogin");
        bean.setUnauthorizedUrl("/noAuth");

        return bean;
    }

    @Bean
    public DefaultWebSecurityManager getDefaultWebSecurityManager(@Qualifier("userRealm") UserRealm userRealm){
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();

        securityManager.setRealm(userRealm);
        return securityManager;
    }

    @Bean
    public UserRealm userRealm(){
        return  new UserRealm();
    }
}
