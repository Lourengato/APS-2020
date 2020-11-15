<%-- 
    Document   : cadastrarProduto
    Created on : 15/11/2020, 19:37:20
    Author     : loure
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Produto</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="justify-center column align-center full-height">
            <div class="justify-center row">
                <div style="height: min-content;" class="margin-right-md">
                    <img src="undraw_on_the_way_ldaq.svg" class="image">
                </div>

                <div class="container column align-center">
                    <div class="column margin-bottom">
                        <h2>Cadastrar Produto</h2>
                        <div class="decoration"> </div>
                    </div>
                    
                    <form action="/action_page.php" class="form">
                        <label for="email">Nome:</label>
                        <input type="text" id="name" name="name" class="margin-bottom input">
                        <label for="password">Quantidade:</label>
                        <input type="text" id="quantidade" name="quantidade" class="margin-bottom input">
                        <label for="password">Preço:</label>
                        <input type="text" id="price" name="price" class="margin-bottom input">
                        <label for="password">Categoria:</label>
                        <input type="text" id="category" name="category" class="margin-bottom input">
                        <input type="submit" value="Cadastrar" class="submit-btn">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>