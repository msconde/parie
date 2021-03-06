<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: erwan
  Date: 15/02/2020
  Time: 09:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <s:a class="navbar-brand" action="accueil">Mon Site</s:a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <s:a class="nav-link" action="accueil"><s:text name="Base.accueil"/></s:a>
            </li>
            <s:if test="#session.user.login != null">
            <li class="nav-item">
                <s:a class="nav-link" action="parisOuverts"><s:text name="Base.match"/></s:a>
            </li>
            <li class="nav-item">
                <s:a class="nav-link" action="mesparis"><s:text name="Base.pari"/></s:a>
            </li>
            <li class="nav-item">
                <s:a class="nav-link" action="deconnexion"><s:text name="Base.deconnexion"/></s:a>
            </li>
            </s:if>
            <s:else>
            <li class="nav-item">
                <s:a class="nav-link" action="connexion"><s:text name="Connexion.valider"/></s:a>
            </li>
            </s:else>
        </ul>

    <s:if test="#session.user.login != null">
        <span class="navbar-text">
            <s:text name="Base.utilisateurcourant"/>  <b><s:property value="#session.user.login"/></b>
        </span>
    </s:if>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
