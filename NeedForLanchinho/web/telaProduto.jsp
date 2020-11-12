<%-- 
    Document   : telaProduto
    Created on : 09/11/2020, 08:57:09
    Author     : loure
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
    </head>
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
</html>
<script>
    var produtos = [{nome: 'banana', price: '3,99', quantidade: 0}, {nome: 'banana', price: '3,99', quantidade: 0}, {nome: 'banana', price: '3,99', quantidade: 0}]

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
            quantidade.innerHTML = '<button type="button" id="minus" onclick="removeItem(produtos[i].quantidade)">-</button>' + 0 + '<button id="plus" type="button" onclick="addItem(produtos[i].quantidade)">+</button>';
        }
    }
</script>
