<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parier</title>
</head>
<body>
    <%@include file="base.jsp"%>
    <h1><s:property value="#application.Pari.match.equipe1"/> vs <s:property value="#application.Pari.match.equipe2"/></h1>
    <s:form action="parier" method="POST">
        <s:textfield label="Verdict " class="form-control" name="verdict" size="30"/>
        <s:textfield type="number" class="form-control" label="Mise " name="mise" size="30"/>
        <s:submit value="Valider" class="btn btn-success" align="center"/>
    </s:form>
</body>
</html>
