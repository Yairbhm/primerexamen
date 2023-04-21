<%@page import="com.emergentes.modelo.Registro"%>
<% 
    Registro reg = (Registro)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            body {
                font-family: Century Gothic;
                line-height: 1.5;
            }
            #datos {
                width: 450px;
                margin: 50px auto;
                padding: 20px;
                border: 1px solid black;

            }
            #datos1 {
                width: 400px;
                margin: 50px auto;
                border: 1px solid black;
                padding: 20px;
                line-height: 1;


            }
            #enviar {
                text-align: center;
                margin-top: 10px;
            }

            table {
                border-collapse: collapse;
                margin-bottom: 20px;
            }
            table td:first-child {
                text-align: right;
                padding-right: 10px;
            }
        </style>
    </head>
    <body>
    
        
        <div id="datos1">
          
                <p>PRIMER PARCIAL TEM-742<p>
                <p>Nombre: Brayhan Eduardo Huanca Mamani<p>
                <p>Carnet: 8268846<p>
        </div>
        
        
        <center>
            <h1>Registro de calificaciones </h1>
        </center>

        <div id="datos">
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td hidden>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly hidden></td>
                </tr>
                <tr>
                    <td>Nombre del estudiante</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre() %>"></td>
                </tr>
                <tr>
                    <td>Primer Parcial (sobre 30 pts)</td>
                    <td>
                        <input type="text" name="primero" value=" <%= reg.getPrimero() %>">
                    </td>
                </tr>
                <tr>
                    <td>Segundo Parcial (sobre 30 pts)</td>
                    <td>
                        <input type="text" name="segundo" value="<%= reg.getSegundo() %>">
                    </td>
                </tr>
                <tr>
                    <td>Examen final (sobre 40 pts)</td>
                    <td>
                        <input type="text" name="tercero" value="<%= reg.getTercero() %>">
                    </td>
                </tr>

            </table>
    </div>

      <div id="enviar" >
        <input  type="submit" value="Enviar" >  
    </div>
            </form>

    </body>
</html>
