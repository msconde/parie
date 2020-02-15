<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation du pari</title>
</head>
<body>
    <%@include file="base.jsp"%>
    <b><s:property value="#session.user.login"/></b>

    <s:text name="infoPariCree.pari"/> <s:property value="pariRealise.montant"/> <s:text name="infoPari.resultat" /> <s:property value="pariRealise.vainqueur"/>
    <s:text name="infoPari.match" /> <s:property value="pariRealise.match.equipe1"/> <s:text name="infoPari.vs" /> <s:property value="pariRealise.match.equipe2"/>
    <s:text name="infoPari.le"/> <s:property value="pariRealise.match.quand"/>.
</body>
</html>
