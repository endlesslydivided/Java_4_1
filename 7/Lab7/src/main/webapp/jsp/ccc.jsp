<%--
  Created by IntelliJ IDEA.
  User: ON
  Date: 18.09.2022
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.ServletContext" %>
<%@ page import="com.bstu.lab7.CBean" %>
<html>
<head>
    <title>
        Cbean page
    </title>
</head>
<body>
<h3>CBean: </h3>
<%
    CBean objFromReq = (CBean) request.getAttribute("attrCBean");
    CBean objFromSess = (CBean) request.getSession().getAttribute(request.getSession().getId());
%>
<div>
    <label><%=objFromReq.getValue1()%>
    </label>
    <label><%=objFromReq.getValue2()%>
    </label>
    <label><%=objFromReq.getValue3()%>
    </label>
</div>

<h2>Values from attribute of session</h2>

<div>
    <label><%=objFromSess.getValue1()%>
    </label>
    <label><%=objFromSess.getValue2()%>
    </label>
    <label><%=objFromSess.getValue3()%>
    </label>
</div></body>
</html>