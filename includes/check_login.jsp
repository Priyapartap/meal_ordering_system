<% 
if(session.getAttribute("login_id")==null)
{
	response.sendRedirect("login.jsp?msg=Login Required to access this");
}
/*
if(session.getAttribute("login_id")!=null)
{
	if((Integer) session.getAttribute("login_id")==0)
	{
		response.sendRedirect("login.jsp?msg=Please login first to continue..........");
	}	
}
*/
%>