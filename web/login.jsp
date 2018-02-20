<%-- 
    Document   : login
    Created on : Feb 20, 2018, 9:59:05 AM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String userid = request.getParameter("email");   
    String pwd = request.getParameter("password");
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/idver","postgres", "abc123");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from login where email='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("menu.jsp");
    } else {
        out.println("<br/><p>Invalid password <a href='index.jsp'>try again</a></p>");
    }
%>