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

    Vous avez parié <s:property value="pariRealise.montant"/> sur euros sur le résultat <s:property value="pariRealise.vainqueur"/> pour
    le match : <s:property value="pariRealise.match.equipe1"/> vs <s:property value="pariRealise.match.equipe2"/> le
    <s:property value="pariRealise.match.quand"/>.
</body>
</html>
