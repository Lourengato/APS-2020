<%-- 
    Document   : cadastro
    Created on : 09/11/2020, 08:56:14
    Author     : loure
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="menuGrid">
            <img src="undraw_on_the_way_ldaq.svg" class="image">
            <div class="formDiv">
                <form action="/action_page.php" class="form">
                    <label for="userName">Nome:</label>
                    <input type="text" id="userName" name="userName">
                    <label for="lastName">Sobrenome:</label>
                    <input type="text" id="lastName" name="lastName">
                    <label for="phone">Telefone:</label>
                    <input type="text" id="phone" name="phone">
                    <label for="document">CPF:</label>
                    <input type="text" id="document" name="document">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email">
                    <label for="password">Senha:</label>
                    <input type="text" id="password" name="password">
                    <label for="repassword">Repita a senha:</label>
                    <input type="text" id="repassword" name="repassword">
                    <input type="submit" value="Entrar" >
                </form>
            </div>
        </div>
    </body>
</html>