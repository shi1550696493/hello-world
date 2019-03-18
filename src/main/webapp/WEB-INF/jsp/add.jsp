<%--
  Created by IntelliJ IDEA.
  User: 15506
  Date: 2018-12-26
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>q
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/index2.css">
    <script type="text/javascript" src="jquery/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="jquery/checkBox.js"></script>
    <script type="text/javascript">
        function add() {
            $.post(
                "add",
                $("form").serialize(),
                function (mag) {
                        alert("添加成功")
                        location.href="list";
                }
            );
        }
    </script>
</head>
<body>
		<form action="" method="post">
            <table>
                <tr>
                    <td>状态</td>
                    <td>
                        <select name="wstate">
                            <option value="0">禁用</option>
                            <option value="1">启用</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>位置</td>
                    <td>
                        <select name="wz">
                            <option value="1">首页</option>
                            <option value="2">官网</option>
                            <option value="3">App</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>名称</td>
                    <td>
                        <input type="text" name="wname">
                    </td>
                </tr>
                <tr>
                    <td>描述</td>
                    <td>
                        <textarea name="wms">

                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" value="保存" onclick="add()">
                    </td>
                </tr>
            </table>
        </form>
</body>
</html>
