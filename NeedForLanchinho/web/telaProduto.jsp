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
        <link rel="stylesheet" href="style.css">
        <title>Produtos</title>
    </head>
    <body>
        <div class="column margin-bottom">
            <h2>Pedido</h2>
            <div class="decoration"> </div>
        </div>

        <div class="full-width row">
            <button type="button" id="addProduct" onclick="addLanche()" class="submit-btn margin-bottom">Adicionar lanche</button>
        </div>

        <div id="containerPedido"></div>

        <div class="row justify-between">
            <p>Total: 25,99</p>
            <button class="submit-btn">Finalizar compra</button>
        </div>
    </body>
</html>

<script>
    var produtos = [{nome: 'banana', price: '3,99', quantidade: 0}, {nome: 'banana', price: '3,99', quantidade: 0}, {nome: 'banana', price: '3,99', quantidade: 0}];

    var id = 0;

    function addLanche(item){
        var container = document.createElement("div");
        var productsTable = document.createElement("table");
        var btnDelete = document.createElement("button");
        btnDelete.innerHTML = "Excluir produto";
        productsTable.id = 'table' + id;
        container.id = 'container' + id;
        productsTable.classList.add('full-width');
        productsTable.classList.add('margin-bottom');
        container.classList.add('margin-bottom');
        document.getElementById('containerPedido').appendChild(container);
        // document.body.appendChild(container);
        document.getElementById('container' + id).appendChild(productsTable);
        document.getElementById('container' + id).appendChild(btnDelete);
        btnDelete.classList.add('submit-btn');
        btnDelete.onclick = function(){container.remove();};
        var table = document.getElementById('table' + id);
        var row = table.insertRow(0);
        var name = row.insertCell(0);
        var price = row.insertCell(1);
        var quantidade = row.insertCell(2);
        name.innerHTML = 'Ingrediente:';
        price.innerHTML ='Preço:';
        quantidade.innerHTML = 'Quantidade:';

        for (var i = 0; i < produtos.length; i++) {
            var table = document.getElementById('table' + id);
            var row = table.insertRow(i + 1);
            var name = row.insertCell(0);
            var price = row.insertCell(1);
            var quantidade = row.insertCell(2);
            name.innerHTML = produtos[i].nome;
            price.innerHTML = produtos[i].price;
            quantidade.innerHTML = '<button type="button" id="minus" onclick="removeItem()" class="submit-btn margin-right-sm">-</button>' + 0 + 
            '<button id="plus" type="button" onclick="addItem()" class="submit-btn margin-left-sm">+</button>';
        }                   
        id ++;
    }

    function addItem(item){

    }

    function removeItem(item){
        
    }
</script>