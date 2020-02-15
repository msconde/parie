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
            sport : <s:property value="match.sport"/> - <s:property value="match.equipe1"/> vs <s:property value="match.equipe2"/> - le <s:property value="match.quand"/>. Mise de <s:property value="montant"/> sur <s:property value="vainqueur"/>
            <s:url var="parisURL" action="annulerpari">
                <s:param name="id" value="idPari"/>
            </s:url>

            <s:a href="%{parisURL}">
                annuler
            </s:a>
        </li>
    </s:iterator>
    </ul>
</body>
</html>
