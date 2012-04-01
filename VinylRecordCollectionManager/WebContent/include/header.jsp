<%@ page import="java.util.Locale, java.util.ResourceBundle" %>

<div id="header" style="height:150px;border-bottom:3px black solid;overflow:hidden">
<div id="image" style="float:left;">
<img alt="Vinyl Picture" src="/VinylRecordCollectionManager/style/images/platine-vinyl.png"/>
</div>
<div id=title style="float:left;padding-left:10px;border-left:black 3px solid">
<%	
	ResourceBundle bundle;
	if( session.getAttribute("lang") != null )
		bundle = ResourceBundle.getBundle( "text", new Locale((String)session.getAttribute("lang"),"") );
	else
		bundle = ResourceBundle.getBundle( "text", Locale.ENGLISH );

	if( session.getAttribute("username") != null ) {
%>
<p><%=bundle.getString("welcome")%> <a href="/VinylRecordCollectionManager/nav?content=userinfo&param=<%=session.getAttribute("username")%>"><%=session.getAttribute("username")%></a> | <a href="/VinylRecordCollectionManager/logout"><%=bundle.getString("logout")%></a></p>
<%	} else { %>
<form name='loginForm' method="post" action="/VinylRecordCollectionManager/login">
<table>
	<tr><td><%=bundle.getString("username")%> : </td><td><input type="text" name="username"/></td><td><input type="submit" name="validate" value="<%=bundle.getString("login")%>" /></td></tr>
	<tr><td><%=bundle.getString("password")%> : </td><td><input type="text" name="password"/></td><td><a href="/VinylRecordCollectionManager/nav?content=newaccount"><%=bundle.getString("createaccount")%></a> </td></tr>
</table>
</form>
<%	}
%>
<p style="font-size:30px;font-weight:bold">Vinyl Record Collection Manager <a href="/VinylRecordCollectionManager/lang?lang=fr&page=index"><img alt="FR" src="/VinylRecordCollectionManager/style/images/french-flag.png" /></a>|<a href="/VinylRecordCollectionManager/lang?&lang=en&page=index"><img alt="EN" src="/VinylRecordCollectionManager/style/images/english-flag.png" /></a></p>

</div>
</div>
<div id="header-menu" style="border-bottom:3px black solid;padding-left:180px">
<a href="/VinylRecordCollectionManager/search.jsp"><%=bundle.getString("search")%></a>
<% if( session.getAttribute("username") != null ) {%>
<a href="/VinylRecordCollectionManager/create.jsp"><%=bundle.getString("createalbum")%></a>
<%} %>
</div>