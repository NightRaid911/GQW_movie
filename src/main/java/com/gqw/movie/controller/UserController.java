package com.gqw.movie.controller;

import com.gqw.movie.pojo.User;
import com.gqw.movie.service.UserService;
import com.gqw.movie.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/regist.html")
    public String regist(String ming, String xing, String email, String password, String repwd, Model model) {
        String name = xing + ming;
        if (!password.equals(repwd)) {
            model.addAttribute("errorMsg", "两次密码输入不一致");
            return "error";
        }
        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);
        userService.doRegist(user);
        return "login";
    }

    @RequestMapping("/login.html")
    public String login(String email, String password, HttpSession session, Model model) throws Exception {
        System.out.println(email + ",,,,,," + password);
        User user = userService.doLogin(email, password);
        System.out.println(user.toString());
        if (!user.getEmail().equals("admin@126.com")) {
            session.setAttribute(Constants.SESSION_USER, user);
            return "redirect:/movie/index.html";
        }
        session.setAttribute(Constants.SESSION_USER, user);
        return "redirect:/admin/admin.html";
    }

    @RequestMapping("/loginOut.html")
    public String loginOut(HttpSession session) {
        session.invalidate();
        return "login";
    }

    /**
     * 用户邮箱验证 (Ajax)
     * @param email
     * @param gqw   参数 0：入口为注册页面。参数 1：入口为激活页面。参数 2：入口为登陆页面
     * @return
     */
    @RequestMapping("/check.html")
    @ResponseBody
    public Map<String, Object> checkUserName(String email, Integer gqw) {
        Map<String, Object> result = new HashMap();
        User user1 = new User();
        user1.setEmail(email);
        User user = userService.getUserByUserEmail(user1);
        if (user != null) {

            //登陆时判断是否为已激活的邮箱
            if (gqw == 2) {
                Integer status = user.getStatus();
                if (status == 0) {
                    result.put("status", false);
                    result.put("msg", "该邮箱未激活,跳转至<a href='/jihuo.jsp'>激活</a>页面");
                } else {
                    result.put("status", true);
                    result.put("msg", "该邮箱已激活");
                }
                return result;
            }


            //激活页面调用，判断是否为可以激活邮箱
            if (gqw == 1) {
                result.put("status", true);
                result.put("msg", "可激活该邮箱");
            } else {
                result.put("status", false);
                result.put("msg", "该邮箱已被注册！");
            }


        } else {

            //激活页面调用，判断是否为可以激活邮箱
            if (gqw == 1 || gqw == 2) {//登陆页面调用时，判断其是否已经注册
                result.put("status", false);
                result.put("msg", "该邮箱未注册，请先注册！");
            } else {
                result.put("status", true);
                result.put("msg", "邮箱可以使用！");
            }


        }
        return result;

    }

    @RequestMapping("/upload_avatar.html")
    public String upload_avatar(String email, Model model) {
        User user = new User();
        user.setEmail(email);
        User user1 = userService.getUserByUserEmail(user);
        model.addAttribute("user", user1);
        return "upload_avatar";
    }

    @RequestMapping("/go_upload.html")
    public String go_uoload(String avatar, Integer id, String email, HttpSession session) {
        User user1 = new User();
        user1.setEmail(email);
        User user = userService.getUserByUserEmail(user1);
        user.setAvatar(avatar);
        user.setId(id);
        session.setAttribute(Constants.SESSION_USER, user);
        userService.updateUserAvatar(user);
        return "redirect:/movie/index.html";
    }

    @RequestMapping("/jh.html")
    public String jh(String email, Model model) {
        User user = new User();
        user.setEmail(email);
        Integer id = userService.getUserByUserEmail(user).getId();
        userService.updateUserByUserId(id);
        model.addAttribute("email", email);
        return "login";
    }
}
