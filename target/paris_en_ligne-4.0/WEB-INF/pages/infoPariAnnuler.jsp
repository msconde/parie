<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mes paris</title>
</head>
<body>
    <%@include file="base.jsp"%>
    <b><s:property value="#session.user.login"/></b>

    <s:text name="infoPariAnnuler.mise"/> <s:property value="pariAnnule.montant"/> <s:text name="infoPari.resultat"/> <s:property value="pariAnnule.vainqueur"/>
    <s:text name="infoPari.match"/> <s:property value="pariAnnule.match.equipe1"/> <s:text name="infoPari.vs"/> <s:property value="pariAnnule.match.equipe2"/>
    <s:text name="infoPari.le"/> <s:property value="pariAnnule.match.quand"/> <s:text name="infoPariAnnuler.annulee"/>
</body>
</html>
