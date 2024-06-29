
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>Aprendices</title>
        <style>
         
            form{
                
                width: 50vw;
                margin: 0 auto;
                padding: 20px;
                text-align: center;
                justify-content: center;
            }
        
       </style>     
    </head>
    <body>
        <h1>Ingresar datos Aprendices (METODO POST)</h1>
        
        <form action="servlets" method="POST">
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre de aprendiz</label>
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Digite su nombre de aprendiz" required>
        </div>
        <div class="mb-3">
            <label for="apellido" class="form-label">Digite su apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido"  placeholder="Digite su nombre de aprendiz" required>
        </div>
            <button type="submit" class="btn btn-primary">Enviar datos </button>   
        </form>
        
        <hr>
        <h1>Mostrar aprendices (METODO GET)</h1>
        <form action="servlets" method="GET">
            <button type="submit" class="btn btn-primary">Mostrar Datos </button>   
        </form>
        
       <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>   
  
    </body>
</html>
