<%@ page import="java.util.ResourceBundle,java.util.Locale" %>
<%
ResourceBundle bundle;
if( session.getAttribute("lang") != null )
	bundle = ResourceBundle.getBundle( "text", new Locale((String)session.getAttribute("lang"),"") );
else
	bundle = ResourceBundle.getBundle( "text", Locale.ENGLISH );
%>

<p><%=bundle.getString("newAccountText")%></p>
<form method="post" name="newAccForm" action="/VinylRecordCollectionManager/newaccount">
	<table>
		<tr>
			<td><%=bundle.getString("username")%> :</td>
			<td><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td><%=bundle.getString("password")%> :</td>
			<td><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td><%=bundle.getString("password_check")%> :</td>
			<td><input type="password" name="password_check"/></td>
		</tr>
		<tr>
			<td><%=bundle.getString("email")%> :</td>
			<td><input type="text" name="email"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="<%=bundle.getString("validateAccount")%>" name="validate" /></td>
		</tr>
		
	</table>
</form>