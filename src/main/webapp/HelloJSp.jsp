<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%! 
    public int x = 22;
    public String message() {
        return "I love JSP";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Hello JSP </title>
</head>
<body>
    <h1>Hello JSP</h1>

    <!-- Simple Expressions -->
    <p><%= "hello" %></p>
    <p><%= x %></p>
    <p><%= new Integer(22) %></p>
    <p><%= new String("Kristijan") %></p>
    <p><%= new java.util.Date() %></p>

    <br/>
     //operacija mnozenje
    <!-- Arithmetic Operation -->
    <p>25 * 4 = <%= 25 * 4 %></p>

    <br/>

    <!-- Boolean Expression -->
    <p>Is 25 greater than 4? <%= 25 > 4 %></p>

    <br/>

    <!-- Variable Declaration and Printing -->
    <%
        int localX = 25;
        out.println("localX = " + localX);
    %>

    <br/>
       <!-- Conditional Statement -->
    <%
        if (localX > 25) {
            out.println("localX is greater than 25");
        } else {
            out.println("localX is not greater than 25");
        }
        %>
          <br/>
          
          
          <!-- Loop with Font Sizes -->
    <%! int fontSize; %>
    <%
        for (fontSize = 1; fontSize <= 3; fontSize++) {
    %>
        <font color="green" size="<%= fontSize %>">JSP Tutorial</font><br />
    <%
        }
    %>

    <br/>

    <!-- Another Variable Declaration and Output -->
    <%! int x2 = 33; %>
    <p>x2 = <%= x2 %></p>

    <br/>

    <!-- Method Output -->
    <!-- Method Output -->
    <p>Message: <%= message() %></p>

    <br/>

    <!-- Commented Out Redirect (for illustrative purposes) -->
    <!-- <%-- response.sendRedirect("https://www.google.com"); --%> -->
</body>
</html>
    
    
