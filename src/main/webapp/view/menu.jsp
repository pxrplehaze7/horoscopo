<%@ page import="org.example.horoscopo.dto.UsuarioDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UsuarioDTO user = (UsuarioDTO) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("/");
        return;
    }
%>

<jsp:include page="template/head.jsp"/>

<div class="container mt-5">
    <h1>Hola, ${user.getNombre().toUpperCase()} </h1>
    <h2>Selecciona una opción</h2>

    <div class="row justify-content-center mt-5">
        <div class="col col-lg-3 d-flex justify-content-center">
            <a href="/horoscopo" style="min-width: 80%" role="button" class="btn btn-outline-dark">Conoce tu animal</a>
        </div>
        <div class="col col-lg-3 d-flex justify-content-center">
            <a href="/userList" style="min-width: 80%" role="button" class="btn btn-outline-dark">Buscar usuarios</a>
        </div>
        <div class="col col-lg-3 d-flex justify-content-center">
            <a href="/editUser" style="min-width: 80%" role="button" class="btn btn-outline-dark">Modificar datos</a>
        </div>
        <div class="col col-lg-3 d-flex justify-content-center">
            <a  id="eliminaUsuario" style="min-width: 80%" role="button"
               class="btn btn-outline-dark">Eliminar cuenta</a>
        </div>

    </div>
</div>

<script>
    window.addEventListener("load", (event) => {

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

        document.getElementById("eliminaUsuario").addEventListener("click", (event) => {
            event.preventDefault();
            Swal.fire({
                title: '¿Estás seguro?',
                text: "No podrás revertir esta accion",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Continuar',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {

                    window.location.href = "/deleteUser?id=${user.getId()}";
                }
            })
        })
    });
</script>
<jsp:include page="template/foot.jsp"/>