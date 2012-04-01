<%@ page import="java.util.Locale, java.util.ResourceBundle" %>

<%	
	ResourceBundle marginBundle;
	if( session.getAttribute("lang") != null )
		marginBundle = ResourceBundle.getBundle( "text", new Locale((String)session.getAttribute("lang"),"") );
	else
		marginBundle = ResourceBundle.getBundle( "text", Locale.ENGLISH );

%>
	
<div id="margin" style="width:150px;float:left;">
<ul>
<li><a href="/VinylRecordCollectionManager/nav?home"><%=marginBundle.getString("home")%></a></li>
</ul>
<%	

	if( session.getAttribute("username") != null ) {
%>
<div style="border-top:1px grey solid;padding-top:5px" >
<ul>
<li><a href=""><%=marginBundle.getString("myRecords")%></a></li>
<li><a href=""><%=marginBundle.getString("myPlaylists")%></a></li>
<li><a href=""><%=marginBundle.getString("trackedRecords")%></a></li>
</ul>
</div>
<% } %>
</div>
