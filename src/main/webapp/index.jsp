<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Registro"%>
<%
    if(session.getAttribute("listaper") == null){
        ArrayList<Registro> lisaux = new ArrayList<Registro>();
        session.setAttribute("listaper",lisaux);
    }
    ArrayList<Registro> lista = (ArrayList<Registro>) session.getAttribute("listaper");

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
                width: 600px;
                margin: 50px auto;
                padding: 20px;

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
        <h1>Gestor de Tareas</h1>
        </center>
        <div id="datos">
        <a href="MainServlet?op=nuevo"><input type="submit" value="Nuevo"></a>
        <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>P1(30)</th>
                    <th>P2(30)</th>
                    <th>P3(30)</th>
                    <th>Nota</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                    if (lista != null){
                        for(Registro item: lista){                       
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getPrimero() %></td>
                    <td><%= item.getSegundo() %></td>
                    <td><%= item.getTercero()%></td>
                    <td><%  int primero = Integer.parseInt(item.getPrimero());
                            int segundo = Integer.parseInt(item.getSegundo());
                            int tercero = Integer.parseInt(item.getTercero());
                            int sum = primero + segundo + tercero;
                    %>
                    <%= sum   %>                    
                    </td>
                    <td> 
                        <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                    </td>
                    <td> 
                        <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                           onclick="return(confirm('Esta seguro de Eliminar??'))"
                           >Eliminar</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
        </table>

       </div>
    </center>       
    </body>
</html>
