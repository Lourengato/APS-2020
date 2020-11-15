<%-- 
    Document   : telaRelatorio
    Created on : 09/11/2020, 08:57:28
    Author     : loure
--%>

<%@page import="entidade.TbCompra"%>
<%@page import="java.util.List"%>
<%@page import="dao.CompraDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relatorio</title>
    </head>
    <body>
        <body>
            <p> </p>
    
            <table id="products" >
                <th>
                <td style="border: 1px solid black">
                Valor total 
                </td>
                <td style="border: 1px solid black">
                Data pedido
                </td>
                </th>
               <%
                    CompraDao compra = new CompraDao();
                    List<TbCompra> compras = compra.listarCompra();
                    
                    
                    for( TbCompra c : compras){
                        if(request.getAttribute("id") == c.getCodCompra()){
                %>
                    <td><% out.print(c.getValorTotal()); %></td>
                <%} else {%>
                    <tr>
                        <td style="border: 1px solid black"><% out.print(c.getCodCompra()); %></td>
                        <td style="border: 1px solid black"><% out.print(c.getValorTotal()); %></td>
                        <td style="border: 1px solid black"><% out.print(c.getDataCompra());%></td>
                    </tr>
                <%}}%>
            </table>
            <br>
        </body>
    </body>
</html>
