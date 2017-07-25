<%@ page import="java.sql.Time" %><%--
  Created by IntelliJ IDEA.
  User: beheraa
  Date: 7/26/2017
  Time: 12:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%! static int counter = 0; %>
<% String n = request.getParameter("name");
String pswd = request.getParameter("pswd");
if(counter < 2) {
    if (isValidate(n, pswd)) {
        counter = 0;
        %><jsp:include page="Welcome.jsp"/>// redirect to the next page
    <%} else {
        counter++;
        out.print("You have"+(3-counter)+ " attempt(s) left");
        %><jsp:include page="Login.jsp"/>
       <%
    }
} else if(counter == 2) {
    if (isValidate(n, pswd)) {
        counter = 0;
       %><jsp:include page="Welcome.jsp"/>
        <%
    } else {
       // account will be locked for sometime
        long t= System.currentTimeMillis();
        while(System.currentTimeMillis() - t <= 10000);
        counter = 0;
        %><jsp:include page="Login.jsp"/>
<%

    }
}%>
<%! public boolean isValidate(String name,String pswd) {
    if((name != null || name != "") && (pswd != null) || pswd != "") {
    if(name.equals("anjan") && pswd.equals("akb123")) {
    return true;
    }
    return false;
    }
    return false;
    } %>
</body>
</html>

