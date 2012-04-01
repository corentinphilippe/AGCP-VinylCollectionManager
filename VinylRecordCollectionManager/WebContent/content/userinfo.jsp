<%@ page import="java.util.ResourceBundle,java.util.Locale" %>
<%
ResourceBundle bundle;
if( session.getAttribute("lang") != null )
	bundle = ResourceBundle.getBundle( "text", new Locale((String)session.getAttribute("lang"),"") );
else
	bundle = ResourceBundle.getBundle( "text", Locale.ENGLISH );

%>

<h3><%=bundle.getString( "userinfotitle" ) %></h3>

<%


if( session.getAttribute( "param" ) != null ) {
%>
<table>
	<tr><td><%=bundle.getString( "username" ) %> :</td><td><%=session.getAttribute( "param" ) %></td></tr>
	<tr><td><%=bundle.getString( "email" ) %> :</td><td>-</td></tr>
	<tr><td><%=bundle.getString( "website" ) %> :</td><td>-</td></tr>
	<tr><td>other :</td><td>-</td></tr>
	<tr><td>other :</td><td>-</td></tr>
	<tr><td>other :</td><td>-</td></tr>
</table>

<% }else{ %>
<p><%=bundle.getString( "naverror" ) %><p>
<% } %>