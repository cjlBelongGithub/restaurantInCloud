package com.restaurant.control;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

public class uploadControl {

    public static void uploadFile(MultipartFile file, HttpServletRequest request, String path)
            throws IllegalStateException, IOException {
        // String url =
        // request.getSession().getServletContext().getRealPath("/"); //服务器地址
        if (!file.isEmpty()) {
            // 文件保存路径
            String filePath = path + file.getOriginalFilename();
            // 转存文件
            file.transferTo(new File(filePath));
        }
    }


}
