<%--
  Created by IntelliJ IDEA.
  User: MC234
  Date: 2021/5/26
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
request.getSession().invalidate(); //-- 手动销毁session-->
%>
<jsp:forward page="index.jsp" />

