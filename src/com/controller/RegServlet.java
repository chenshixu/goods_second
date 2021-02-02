package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/reg")
public class RegServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获得用户名
        String ename=req.getParameter("ename");
        if("admin".equals(ename)){
            //已注册,转发
            req.setAttribute("msg","已注册");
        }
        else{
            //可注册，转发
            req.setAttribute("msg","可注册");
        }
        req.getRequestDispatcher("reg.jsp").forward(req,resp);
    }
}
