<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Les paris</title>
</head>
<body>
    <%@include file="base.jsp"%>
    <b><s:property value="#session.user.login"/></b>

    <ul>
    <s:iterator value="mesParis">
        <li>
            <s:text name="mesParis.sport"/> <s:property value="match.sport"/> - <s:property value="match.equipe1"/> <s:text name="infoPari.vs"/> <s:property value="match.equipe2"/> - <s:text name="infoPari.le"/> <s:property value="match.quand"/>. <s:text name="mesParis.mise"/> <s:property value="montant"/> <s:text name="mesParis.sur"/> <s:property value="vainqueur"/>
            <s:url var="parisURL" action="annulerpari">
                <s:param name="id" value="idPari"/>
            </s:url>

            <s:a href="%{parisURL}">
                <s:text name="mesParis.annuler" />
            </s:a>
        </li>
    </s:iterator>
    </ul>
</body>
</html>
