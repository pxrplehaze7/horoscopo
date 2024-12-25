
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="template/head.jsp"/>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    Registro
                </div>
                <div class="card-body">
                    <form method="post" action="/register">
                        <div class="mb-3">
                            <label for="name" class="form-label">Nombre y Apellido</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="username" class="form-label">Nombre de Usuario</label>
                            <input type="text" class="form-control" id="username" name="username">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="fechaNacimiento" class="form-label">Fecha Nacimiento</label>
                            <input type="date" class="form-control" id="fechaNacimiento" name="fechaNacimiento">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                        <div class="mb-3">
                            <label for="rePassword" class="form-label">Repita Contraseña</label>
                            <input type="password" class="form-control" id="rePassword" name="rePassword">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Registrarse</button>
                        </div>
                    </form>
                    <p class="mt-3">Si ya tienes una cuenta, <a href="/">inicia sesión</a>.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    window.addEventListener("load", function (event) {
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
        mensajeError("<%= error %>");
        <%
            }
        %>
    });
</script>


<jsp:include page="template/foot.jsp"/>