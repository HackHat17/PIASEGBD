
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta información</title>
        <style>
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            table {
            border: 1px solid black;
            }
            
        </style>
    </head>
    <body>
        <%
        try{
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://pia-segbd.database.windows.net;DatabaseName = piasegbd1", "EricCor17", "Ebcb.1617208");
          
            Statement st = con.createStatement();
            
            ResultSet rs = st.executeQuery("exec SP_mos");
           
                out.println("<h1>Datos de la tabla</h1>");
                
                out.println("<table><tr><td>Banco</td><td>Fecha</td><td>Compra</td><td>Venta</td></tr>");
                while(rs.next())
                {
                    out.println("<tr><td>");
                    out.println(rs.getString("Banco"));
                    out.println("</td><td>");
                    out.println(rs.getString("Fecha"));
                    out.println("</td><td>");
                    out.println(rs.getDouble("Compra"));
                    out.println("</td><td>");
                    out.println(rs.getDouble("Venta"));
                    out.println("</td><td>");
                    out.println("</tr>");
                    
                }
                rs.close();
                st.close();
                con.close();
                out.println("</table>");
                
                
                
           
        }catch(Exception e){
            out.println("<h1>Error</h1>"+ e.getMessage());
            
        }
        
        
        %>
        <br>
        <form action="index.html">
            <input type="submit" value="Acceptar"/>
        </form>
    </body>
</html>
