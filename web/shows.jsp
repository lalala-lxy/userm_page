<%@ page import="com.cs.service.impl.UserServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cs.entity.User" %>
<%@ page import="com.cs.util.PageSupport" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/9
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <table align="center" width="600" border="1">
      <tr height="40" align="center">
        <td colspan="6"><strong>用户信息列表</strong></td>
      </tr>
      <tr height="40" align="center">
        <td id="aa">编号</td>
        <td>姓名</td>
        <td>密码</td>
        <td>性别</td>
        <td>出生日期</td>
        <td>操作</td>
      </tr>
      <c:forEach var="us" items="${list}">
      <tr height="40" align="center">
        <td>${us.id}</td>
        <td>${us.username}</td>
        <td>${us.password}</td>
        <td>${us.sex}</td>
        <td>
          <fmt:formatDate value="${us.bornDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
        </td>
        <td></td>
      </tr>
      </c:forEach>
    </table>

    <p align="center">
      <c:if test="${ps.currentPageNo >1}">
      <a href="doshow.jsp?indexno=1">首页</a>&nbsp;&nbsp;
      <a href="doshow.jsp?indexno=${ps.currentPageNo-1}">上一页</a>&nbsp;&nbsp;
      </c:if>
      <c:if test="${ps.currentPageNo <ps.totalPageCount}">
      <a href="doshow.jsp?indexno=${ps.currentPageNo+1}">下一页</a>&nbsp;&nbsp;
      <a href="doshow.jsp?indexno=${ps.totalPageCount}">末页</a>
      </c:if>
    </p>
  </body>
  <script  src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
  <script  src="${pageContext.request.contextPath}/js/show.js"></script>
</html>
