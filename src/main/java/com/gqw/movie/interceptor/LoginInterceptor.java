package com.gqw.movie.interceptor;

import com.gqw.movie.util.Constants;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("开始拦截");
        if (request.getSession().getAttribute(Constants.SESSION_USER) != null) {
            return true;
        }
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        return false;
    }
}
