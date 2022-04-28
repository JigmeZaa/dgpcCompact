<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%--<jsp:include page="../../layout/include/css.jsp"/>--%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
</head>
<body>
<div class="card square">
    <div class="card-content square">
        <img class="card-img img-fluid"
             src="<c:url value='/assets/voler/images/background/royal-pic.png' />"
             alt="" style="max-width: 100%; max-height: 100vh;">
        <div class="card-img-overlay overlay-dark d-flex justify-content-between flex-column square">
            <div class="overlay-content" style="padding:20px;position: absolute;  top: 10%;">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <div class="col-auto">
                            <p class="card-text text-ellipsis mt-5">
                                Druk Holding and Investments (DHI), the commercial arm of the Royal Government of
                                Bhutan,
                                was established in 2007 upon issuance of Royal Charter in 2007 "to hold and manage the
                                existing and future investments of the Royal Government for the long term benefit of the
                                people of Bhutan". DHI, the largest and only government-owned holding company in Bhutan,
                                has
                                shares in 21 different companies operating in the manufacturing, energy, natural
                                resources,
                                financial, communication, aviation, trading and real estate sectors. Of the 21 portfolio
                                companies 10 are fully owned (DHI-Owned Companies), 4 are controlled (DHI Controlled
                                Companies - 51% and above) and 7 are linked (DHI-Linked Companies - below 51%). The
                                Ministry
                                of Finance is the sole shareholder of DHI.<br>
                                <a href="https://www.dhi.bt/corporate-profile" target="_blank">
                                    Read More <i class="fa fa-arrow-right"></i>
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col">
                            <div class="card square">
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="<c:url value='/assets/voler/images/logo.png' />" height="48"
                                             class='mb-4' alt=""><h4>Group Compact Management System</h4>
                                        <p style="color: #4e5560">Please sign in to continue</p>
                                        <div class="form-group position-relative has-icon-left square">
                                            <c:if test="${isError}">
                                                <div class="alert alert-danger square"><span>${error}${message}</span>
                                                </div>
                                            </c:if>
                                            <c:if test="${isLogout}">
                                                <div class="alert alert-success square"><span>${message}</span></div>
                                            </c:if>
                                        </div>
                                    </div>
                                    <form id="loginForm" action="<c:url value='/login'/> " method="post">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                                        <div class="form-group">
                                            <label for="username" style="text-transform: none">Username or email
                                                address</label>
                                            <input type="text" class="form-control square" id="username" name="username"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword" style="text-transform: none">Password</label>
                                            <input type="password" class="form-control square" id="inputPassword"
                                                   name="password"
                                                   required>
                                            <div class="pull-left">
                                                <input type="checkbox" class='form-check-input cursor-pointer'
                                                       id="checkbox1"
                                                       onclick="showPasswordFn()">
                                                <label for="checkbox1" class="cursor-pointer"> <small
                                                        style="text-transform: capitalize;">Show
                                                    Password</small></label>
                                            </div>
                                            <a href="<c:url value='/forgotPassword' />" class='pull-right'>
                                                <small style="color: red; text-decoration: underline">Forgot
                                                    password?</small>
                                            </a>
                                        </div>
                                        <br>
                                        <div class="clearfix">
                                            <button class="btn btn-primary btn-sm square btn-block">Login</button>
                                        </div>
                                        <br>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="bottom: 0; position: fixed;">
                    <small style="color: #fff">System developed and maintained by
                        <a href="https://thimphutechpark.bt/ourProduct" target="_blank">
                            Thimphu TechPark Limited.
                        </a>
                    </small>
                    <div class="dropdown-divider"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function showPasswordFn() {
        let x = document.getElementById("inputPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>
</body>
</html>

