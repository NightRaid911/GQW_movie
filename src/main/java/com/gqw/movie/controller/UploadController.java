package com.gqw.movie.controller;

import com.gqw.movie.util.ImageUtil;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class UploadController {

    /**
     * 上传电影封面
     * @param file
     * @param key1
     * @param model
     * @return
     */
    @RequestMapping(value = "/upload.html")
    @ResponseBody
    public String fileUpload1(@RequestParam("file") MultipartFile file, @RequestParam(value = "key1", required = false) String key1,Model model) {
        String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        String fileName = System.currentTimeMillis() + extName;
        try {
            System.out.println(key1);
            //将上传的文件存在E:/upload/下
            /*FileUtils.copyInputStreamToFile(file.getInputStream(), new File("G:/upload/",
                    fileName));*/
            File newFile = new File("G:/upload/", fileName);
            //通过CommonsMultipartFile的方法直接写文件
            file.transferTo(newFile);

            ImageUtil.imgThumb(newFile, "G:/upload/"+ fileName, 500, 500,1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //上传成功返回原来页面
        return "http://localhost:8080/upload/" + fileName;
    }

    /**
     * 上传用户头像
     * @param file
     * @return
     */
    @RequestMapping(value = "/upload_avatar.html")
    @ResponseBody
    public String fileUpload1(@RequestParam("file") MultipartFile file) {
        String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        String fileName = System.currentTimeMillis() + extName;
        try {

            //将上传的文件存在E:/upload/下
//            FileUtils.copyInputStreamToFile(file.getInputStream(), new File("E:/upload/",
//                    fileName));
            File newFile = new File("G:/upload_avatar/", fileName);
            //通过CommonsMultipartFile的方法直接写文件
            file.transferTo(newFile);

            ImageUtil.imgThumb(newFile, "G:/upload_avatar/"+ fileName, 500, 500, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //上传成功返回原来页面
        return  fileName;
    }
    @RequestMapping("cut.html")
    @ResponseBody
    public String cutImg(String fileName, int x1, int y1, int w, int h) throws Exception {
        ImageUtil.imgSourceRegion("G:/upload_avatar/" + fileName, "G:/upload_avatar/" + fileName, x1, y1, w, h, 35, 35, true);
        return "http://localhost:8080/upload_avatar/" + fileName;
    }
}
