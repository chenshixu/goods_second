<%--
  Created by IntelliJ IDEA.
  User: 陈世旭
  Date: 2021/1/31
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <script>
        function  reg() {
            alert(123)
            //获得用户名，发送请求给servlet
            var ename=document.getElementById("ename").value;//得到输入文本中id为ename的内容
            console.log(ename);
            //url:reg?ename=ename
            location.href="reg?ename="+ename;//发送请求 get

        }
    </script>
</head>
<body>
<%--用户名admin已注册，其他可注册
//  请求-处理-响应
    用jsp和servlet如何实现
--%>
    <h1>用户注册</h1>
    用户名:<input type="text" id="ename" value="${param.ename}" onblur="reg()">${msg}<span id="msg"></span>
<%--onblue  鼠标失去焦点时调用reg方法--%>

</body>
</html>
