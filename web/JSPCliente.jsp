<%-- 
    Document   : JSPCliente
    Created on : 27-feb-2018, 9:28:15
    Author     : entrar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>    
    </body>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	net.webservicex.Periodictable service = new net.webservicex.Periodictable();
	net.webservicex.PeriodictableSoap port = service.getPeriodictableSoap();
	 // TODO initialize WS operation arguments here
	java.lang.String elementName = "";
	// TODO process result here
	out.println("Result = "+ port.getElementSymbol("Gold"));
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

</html>
