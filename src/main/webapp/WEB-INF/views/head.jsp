
<%
String user = (String) session.getAttribute("user");
if(user!=null){
	out.println(user);
}
%>