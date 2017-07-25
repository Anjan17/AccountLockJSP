
<html> <head><title>IF...ELSE Example</title></head> 
    <body> 
        <%! int day = 1; %> <%-- declaration --%>
        <%-- method 1 --%>
        <%
        if (day == 1 || day == 7) { 
        %>
       <b> Today is weekend</b>
        <% } else { %>
        <b> Today is not weekend</b>
        <% }  %>
        
        <%-- method 2 --%>
        <br>
        <% if (day == 1 || day == 7) { 
        out.println("<b> Today is weekend2</b>");
         } else { 
        out.println("<b> Today is not weekend2</b>");
         }  %>
    </body> 
</html>
