
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Mostrar datos</title>
    </head>
    <body>
        <table class="table table-striped">
            <thead class="bg-light sticky-top">
    <tr>
        <th scope="col">Id Aprendiz</th>
      <th scope="col">Nombre del Aprendiz</th>
      <th scope="col">Apellido del Aprendiz</th>
     
    </tr>
  </thead>
  <tbody>
<% 

        Connection  con = null ;
           Statement st = null;
           ResultSet rs = null;
          Class.forName("com.mysql.cj.jdbc.Driver");
          String dbDriver = "com.mysql.cj.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        String dbName = "ejemplo"; 
        String dbUsername = "root"; 
        String dbPassword = ""; 

         con =  DriverManager.getConnection(dbURL + dbName, 
                                                     dbUsername,  
                                                     dbPassword); 


         st = con.createStatement();
         rs = st.executeQuery("SELECT * FROM aprendiz");
           

         while(rs.next()){
    %>
  <tr>
  <td><%= rs.getString(1)%></td>
   <td><%= rs.getString(2)%></td>
    <td><%= rs.getString(3)%></td>
  </tr>   
    <% } %> 
    
      </tbody>
      </table>
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
