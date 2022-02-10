<%-- 
    Document   : ProductoVTA
    Created on : 3/02/2022, 07:30:38 AM
    Author     : Santiago
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CVista de productos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Productos</h1>
            </div>
            <div class=" card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Numero id</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Unidades</th>
                            <th>Valor</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var = "objP" items="${lista_productos}">
                            <tr>
                                <td>${objP.getId_prod()}</td>
                                <td>${objP.getNombre_prod()}</td>
                                <td>${objP.getDescripcion()}</td>
                                <td>${objP.getUnd()}</td>
                                <td>${objP.getValor()}</td>
                                <td>
                                    <a class="btn btn-outline-success" style="height: 35px; width: 80px">Ver</a>
                                    <a class="btn btn-outline-warning" style="height: 35px; width: 80px">Editar</a>
                                    <a class="btn btn-outline-danger" style="height: 35px; width: 80px"
                                        href="ProductoCTO?accion=eliminar&id=${objP.getId_prod()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
                integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
                 integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        </div>
    </body>
</html>
