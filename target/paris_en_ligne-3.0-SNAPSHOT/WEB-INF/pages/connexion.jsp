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
    <s:text name='General.motDePasse' var="mdp"/>
    <s:text name='General.pseudonyme' var="pseudo"/>
    <s:text name='Connexion.valider' var="valider"/>

    <%@include file="base.jsp"%>
    <s:form action="connexion" method="POST" validate="true">
        <s:textfield label="%{pseudo}" class="form-control" name="username" size="30"/>
        <s:textfield label="%{mdp}" type="password" class="form-control" name="password" size="30"/>
        <s:submit value="%{valider}" class="btn btn-success" align="center"/>
    </s:form>
</body>
</html>
