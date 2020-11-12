<%-- 
    Document   : telaRelatorio
    Created on : 09/11/2020, 08:57:28
    Author     : loure
--%>

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
    
            <table id="products">
            <tr>
                <td>Nome:</td>
                <td>Preço:</td>
                <td>Quantidade:</td>
            </tr>
            </table>
            <br>
        </body>
    </body>
</html>
<script>
    var produtos = [{nome: 'banana', price: '3,99', quantidade: 5}, {nome: 'banana', price: '3,99', quantidade: 5}, {nome: 'banana', price: '3,99', quantidade: 5}]

    refresh()
    
    function refresh() {
        for (var i = 0; i < produtos.length; i++) {
            var table = document.getElementById("products");
            var row = table.insertRow(i + 1);
            var name = row.insertCell(0);
            var price = row.insertCell(1);
            var quantidade = row.insertCell(2);
            name.innerHTML = produtos[i].nome;
            price.innerHTML = produtos[i].price;
            quantidade.innerHTML = produtos[i].quantidade;
        }
    }
</script>