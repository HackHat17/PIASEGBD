<%-- 
    Document   : insbd
    Created on : 25/05/2021, 01:25:48 AM
    Author     : Eric-PC
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirección</title>
    </head>
    <body>
        <%
        try{
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://pia-segbd.database.windows.net;DatabaseName = piasegbd1", "EricCor17", "Ebcb.1617208");
            
            String banco = request.getParameter("banco");
            String fecha = request.getParameter("fecha");
            String compra = request.getParameter("compra");
            String venta = request.getParameter("venta");
          
            PreparedStatement ps = con.prepareStatement("exec SP_ins ?,?,?,?");
            ps.setString(1, banco);
            ps.setString(2, fecha);
            ps.setString(3, compra);
            ps.setString(4, venta);
            int r = ps.executeUpdate();
            if(r>=1){
                out.println("<h1>Registrado con Exito</h1>");
                
                
                
                
            }else{
                out.println("<h1>No registrado</h1>");
            }
            ps.close();
            con.close();
            
        }catch(Exception e){
            out.println("<h1>Error</h1>"+ e.getMessage());
            
        }
        
        
        %>
        <form action="index.html">
            <input type="submit" value="Acceptar"/>
        </form>
    </body>
</html>
