<%@ page import="org.example.horoscopo.dto.UsuarioDTO" %>
<%
    // Recuperar el usuario de la sesión
    UsuarioDTO user = (UsuarioDTO) session.getAttribute("user");


%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <title>Horoscopo Chino</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>


        function mensajeSuccess(text) {
            Swal.fire({
                text,
                icon: 'success',
                confirmButtonText: 'Continuar'
            })
        }

        function mensajeError(text) {
            Swal.fire({
                text,
                icon: 'error',
                confirmButtonText: 'OK'
            })
        }
    </script>
</head>

<body>

<nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/menu">
            <span class="h2">Horoscopo Chino</span>
        </a>

        <%
            if (user != null) {
        %>
        <a role="button" class="btn btn-light" href="/logout">Cerrar Sesión</a>
        <%

            }
        %>

        <%--        <% } %>--%>


    </div>
</nav>


