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

    La mise de <s:property value="pariAnnule.montant"/> sur euros sur le résultat <s:property value="pariAnnule.vainqueur"/> pour
    le match : <s:property value="pariAnnule.match.equipe1"/> vs <s:property value="pariAnnule.match.equipe2"/> le
    <s:property value="pariAnnule.match.quand"/> a bien été annulée !
</body>
</html>
