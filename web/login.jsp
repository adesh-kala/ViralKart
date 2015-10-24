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
            int goo=1;
                try{
                String isit=request.getParameter("submit");
                out.println(isit);
                if(isit.equals(null)){
                    String redirectURL = "http://localhost:8080/ViralKart2/signup.html";
                    response.sendRedirect(redirectURL);
                    goo=0;

                }
                }
                catch(Exception e){
                 String redirectURL = "http://localhost:8080/ViralKart2/signup.html";
                 response.sendRedirect(redirectURL);
                 goo=0;
                }
            String user=request.getParameter("user");
            String pass=request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ViralKart","root","");
            if(goo==1){
            Statement st=con.createStatement();
            ResultSet rs;
            rs=st.executeQuery("select * from Users where User_Name='"+user+"' and Password='"+pass+"'");
            if(rs.next()){
                out.println("WELCOME");
                String redirectURL = "http://localhost:8080/ViralKart2/web/index.html";
                response.sendRedirect(redirectURL);
                
            }
            else{
              String redirectURL = "http://localhost:8080/ViralKart2/";
               response.sendRedirect(redirectURL);
            }
            }
            
            
            
            
            %>
        
        
        
    </body>
        
        
        
        
    
    
    
    
    
    
    
</html>