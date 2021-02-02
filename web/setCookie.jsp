
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Cookie操作-存</h1>
    <%
        System.out.println(request.getContextPath());
        //创建Cookie对象
        //Cookie不设置路径，在web访问任何路径中都能够获取
        Cookie c1 = new Cookie("ename1","Jack");//参数为键值对 name value --key,value键值对
        Cookie c2=new Cookie("ename2","Rose");
        //设置了路径，只允许相应的路径下才能获取
        c1.setPath(request.getContextPath()+"/show.jsp");
        c2.setMaxAge(60);//单位秒，实现持久化，存储到客户端硬盘
        //Cookie操作-存    客户端会话技术
        response.addCookie(c1);
        response.addCookie(c2);
    %>
</body>
</html>
