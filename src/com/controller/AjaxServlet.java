package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ajax")
public class AjaxServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ename = req.getParameter("ename");
        System.out.println(ename);
        PrintWriter out = resp.getWriter();
        if("admin".equals(ename)){
            //已注册,响应文本   true
          out.print(true);//这里打印到了网页检查页面的控制台

        }else {
            //未注册,响应文本 false
            out.print(false);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String ename=req.getParameter("ename");
        PrintWriter out = resp.getWriter();
        if("admin".equals(ename)){
            out.print(true);
        }
        else {
            out.print(false);
        }
    }
}
