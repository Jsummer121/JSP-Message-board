<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.liuyan.db.DataBaseConnection" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
 <%
	int id=Integer.parseInt(request.getParameter("id"));
	DataBaseConnection dbc = new DataBaseConnection();
	String sql = "delete from liuyan where id=?";
	PreparedStatement pstmt=dbc.getConnection().prepareStatement(sql);
	pstmt.setInt(1, id);
	pstmt.executeUpdate();
	pstmt.close();
	dbc.Close();
	response.sendRedirect("index.jsp");
%>
</html>