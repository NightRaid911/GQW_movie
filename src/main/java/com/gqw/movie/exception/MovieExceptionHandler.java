package com.gqw.movie.exception;

import com.gqw.movie.util.Funcs;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

public class MovieExceptionHandler implements HandlerExceptionResolver {
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        String msg=e.getMessage();
        if (httpServletResponse.isCommitted()){
            return null;
        }
        if (Funcs.isAjax(httpServletRequest)){
            Map<String,String> result=new HashMap<String, String>();
            result.put("ex",msg);
            MappingJackson2JsonView view=new MappingJackson2JsonView();
            return new ModelAndView(view,result);
        }else {
            httpServletRequest.setAttribute("errorMsg",msg);
            return new ModelAndView("error");
        }
    }
}
