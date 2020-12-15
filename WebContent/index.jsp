<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=utf-8"); %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	div{
		margin:0;	
	}
	#content {
		background:#F1F3F4;
		width:890px;
		height:280px;
		margin:5px auto;
		padding:10px;
	}
	#submit{
		margin:0 0 0 810px;
		width:70px;
		height:30px;
	}
	#area{
		margin:5px;
		font-size:25px;
		resize:none;
	}
	#next_text {
		background:#F1F3FF;
		width:890px;
		height:180px;
		margin:10px auto;
		padding:10px;
	}
	.text{
		width:880px;
		height:150px;
	}
	.time{
		margin:3px 0 0 830px;
	}
	#delete:hover {
		color:#f00;
	}
</style>
<title>Dreamspy</title>
</head>
<body>
	<h1>Dreamspy 留言板：</h1>
	<div id="content">
		<form  method="post" action="/LiuYanBan/SaveContent">
			<b><tr>留言内容：</tr></b>
			<br />
			<textarea rows="7" cols="66" id="area" name="area"></textarea>
			<br />
			<input type="submit" id="submit" value="提交">
		</form>
	</div>
<% 
		Connection coon = null;
		Statement stmt = null;
		ResultSet re = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost/liuyanban?serverTimezone=UTC&useSSL=false";
		String user = "root";
		String password = "summer";
		try {
			coon = DriverManager.getConnection(url, user, password);
			stmt = coon.createStatement();
			
			String sql = "select * from liuyan where id>0 order by id desc";
			re = stmt.executeQuery(sql);
			while(re.next()) {
%>
	<div id="next_text">
		<div class="text"><% out.println(re.getString("data")); %></div>
		<span> <a href="delete.jsp?id=<%=re.getString("id")%>" onclick="return confirm('确定要删除吗？')">删除</a></span>
		<span class="time"><% out.println(re.getString("time")); %></span>
	</div>
<% 
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭数据库，释放资源
			if(coon!=null) {
				try {
					coon.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(re!=null) {
				try {
					re.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
%>
</body>
</html>