<%@ page import="java.util.ResourceBundle, java.util.Locale" %>
<%
ResourceBundle bundle;
if( session.getAttribute("lang") != null )
	bundle = ResourceBundle.getBundle( "text", new Locale((String)session.getAttribute("lang"),"") );
else
	bundle = ResourceBundle.getBundle( "text", Locale.ENGLISH );
%>
<h1><%=bundle.getString("welcomeTitle")%></h1>
<p><%=bundle.getString("welcomeText")%><p>
