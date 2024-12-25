
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="template/head.jsp"/>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    Iniciar Sesión
                </div>
                <div class="card-body">
                    <form method="post" action="/login">
                        <div class="mb-3">
                            <label for="username" class="form-label">Nombre de Usuario</label>
                            <input type="text" class="form-control" id="username" name="username">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Iniciar Sesión</button>
                        </div>
                    </form>
                    <p class="mt-3">Si aún no tienes una cuenta, <a href="register">registrate aquí</a>.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    window.addEventListener("load", (event) => {
        // Swal.fire({
        //     title: 'Error!',
        //     text: 'Do you want to continue',
        //     icon: 'error',
        //     confirmButtonText: 'Cool'
        // })
        <%
            String error = (String) request.getAttribute("error");
            String success = (String) request.getAttribute("success");
            if (error != null) {
        %>
        <%--alert("<%= error %>");--%>
        mensajeError("<%= error %>")
        <%
            }else if(success!=null){
              %>
        <%--alert("<%= success %>");--%>
        mensajeSuccess("<%= success %>")
        <%
            }
        %>
    });
</script>


<jsp:include page="template/foot.jsp"/>
