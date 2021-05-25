<%-- 
    Document   : IngresaInfo
    Created on : 25/05/2021, 01:09:15 AM
    Author     : Eric-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresa Información</title>
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
        <h1>Ingrese los datos</h1>
        <form action="insbd.jsp" method="post" name="formulario">
            <table>
                <tr>
                    <td>Banco:</td>
                    <td><input type="text" name="banco" required="" autocomplete="off"/></td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td><input type="date" name="fecha" required="" autocomplete="off"/></td>
                </tr>
                <tr>
                    <td>Compra:</td>
                    <td><input type="text" name="compra" required="" autocomplete="off"/></td>
                </tr>
                <tr>
                    <td>Venta:</td>
                    <td><input type="text" name="venta" required="" autocomplete="off"/></td>
                </tr>
                </table>
                
            
            
            
            
            <input type="submit" name="Enviar" value="Enviar"/>
        </form>
    </body>
</html>
