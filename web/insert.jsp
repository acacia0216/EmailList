<%@ page import="com.javaex.vo.EmailListVO" %>
<%@ page import="com.javaex.dao.EmailListDao" %><%--
  Created by IntelliJ IDEA.
  User: Bit
  Date: 2018-04-17
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String ln = request.getParameter("ln");
    String fn = request.getParameter("fn");
    String email = request.getParameter("email");

    System.out.println(ln+fn+email);

    EmailListVO vo = new EmailListVO(ln,fn,email);
    EmailListDao dao = new EmailListDao();
    dao.insert(vo);

    response.sendRedirect("list.jsp");

%>
</body>
</html>
