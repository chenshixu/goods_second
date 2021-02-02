<%--
  Created by IntelliJ IDEA.
  User: 陈世旭
  Date: 2021/1/31
  Time: 7:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //获取Cookie
        Cookie[] cookies=request.getCookies();
        System.out.println("cookies个数:"+cookies.length);
        for(Cookie cookie:cookies){
            if("ename2".equals(cookie.getName())){
                System.out.println(cookie.getName()+"-"+cookie.getValue());
            }
            if("ename1".equals(cookie.getName())){
                //移除cookie,设置时效为0
                cookie.setMaxAge(0);
                //重新将cookie存入和覆盖
                response.addCookie(cookie);
            }
            if("JSESSIONID".equals(cookie.getName())){
                //设置失效时间来持久化
                System.out.println(cookie.getName());
                cookie.setMaxAge(60);
                response.addCookie(cookie);
            }
        }
    %>
</body>
</html>
