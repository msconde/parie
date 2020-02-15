<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 09:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
</head>
<body>
    <%@include file="base.jsp"%>
    <s:form action="connexion" method="POST">
        <s:textfield label="Pseudo " class="form-control" name="username" size="30"/>
        <s:textfield type="password" class="form-control" label="Mot de passe " name="password" size="30"/>
        <s:submit value="connection" class="btn btn-success" align="center"/>
    </s:form>
</body>
</html>
