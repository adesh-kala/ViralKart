<%@page import="java.io.IOException"%>
<%@page language="java" contentType="text/html;charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>ViralKart</title>  
      </head>
    <body>
        
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        
        
        <%
            
            String user=request.getParameter("user");
            String pass=request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ViralKart","root","");
            Statement st=con.createStatement();
            ResultSet rs;
            
            int i=st.executeUpdate("insert into Users(User_Name,Password) values('"+user+"','"+pass+"')");
            
            
            
            
            
            %>
        
        
        
    </body>
        
        
        
        
    
    
    
    
    
    
    
</html>