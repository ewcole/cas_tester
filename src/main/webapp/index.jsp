<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CAS Test</title>
    </head>
    <body>
 
    <h1>CAS Test</h1>

    <style type="text/css">
        table {
            border: 1px solid silver;
            border-collapse: collapse;
        }
        th {
            background-color: silver;
            border: 2px outset silver;
            padding: 3px 5px 3px 5px;
        }
    </style>
    <p>User: <%= request.getRemoteUser() %></p>
<h2>Attributes from principal</h2>

<%
 
AttributePrincipal principal = (AttributePrincipal)request.getUserPrincipal();
 
Map attributes = principal.getAttributes();
 
Iterator attributeNames = attributes.keySet().iterator();
out.println("<table>");
out.println("<tr><th>Attribute Name</th><th>Value</th></tr>"); 
for (; attributeNames.hasNext();) {
out.println("<tr><th>");
String attributeName = (String) attributeNames.next();
      out.println(attributeName);
      out.println("</th><td>");
      Object attributeValue = attributes.get(attributeName);
      out.println(attributeValue);
      out.println("</td></tr>");
}
 
out.println("</table>");
 
%>
    </body>
</html>
