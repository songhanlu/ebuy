package com.bdqn.ebuy.controller.downtest;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by hp on 2017/12/25.
 */
@Controller
public class DownController {
    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
                                           @RequestParam("filename") String filename,
                                           Model model)throws Exception {
        //下载文件路径
        String path = request.getSession().getServletContext().getRealPath("/statics/download");
        String downloadFileName = new String(filename.getBytes("ISO-8859-1"),"UTF-8");
        File file = new File(path + File.separator + downloadFileName);
        HttpHeaders headers = new HttpHeaders();
        //下载显示的文件名，解决中文名称乱码问题

        //headers.add("Content-Disposition", "attachment;filename="+downloadFileName);
        //通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", new String(downloadFileName.getBytes("UTF-8"), "ISO8859-1"));
        //application/octet-stream ： 二进制流数据（最常见的文件下载）
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);
    }
}
