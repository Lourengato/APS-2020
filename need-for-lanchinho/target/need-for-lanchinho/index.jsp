<!DOCTYPE html>
<html>
    <head>
        <title>My first Vue app</title>
        <script src="https://unpkg.com/vue"></script>
    </head>
    <body>
        <div id="app">
            {{ message }}
        </div>

        <script>
            var app = new Vue({
            el: '#app',
            data: {
                message: 'HUEEEEEEEEEEEEEE EU CONSEGUI!'
            }
            })
        </script>
    </body>
</html>
