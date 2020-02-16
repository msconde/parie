<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des parsi ouverts</title>
</head>
<body>
    <%@include file="base.jsp"%>
    <b><s:property value="#session.user.login"/></b>

    <ul>
        <s:iterator value="parisOuverts">
            <li>
                sport : <s:property value="match.sport"/> - <s:property value="match.equipe1"/> vs <s:property value="match.equipe2"/> -
                <s:url var="parisURL" action="parier">
                    <s:param name="id" value="idPari"/>
                </s:url>

                <s:a href="%{parisURL}">
                    <s:text name="parisOuvert.parier"/>
                </s:a>
            </li>
        </s:iterator>
    </ul>
</body>
</html>
