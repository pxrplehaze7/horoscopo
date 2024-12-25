package org.example.horoscopo.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.horoscopo.repository.HoroscopoRepositoryImpl;
import org.example.horoscopo.repository.UsuarioRepositoryImpl;
import org.example.horoscopo.service.UsuarioService;

import java.io.IOException;

@WebServlet(name="DeleteUserServlet", value="/deleteUser")
public class DeleteUserServlet extends HttpServlet {
    UsuarioService us;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.us = new UsuarioService(new UsuarioRepositoryImpl(), new HoroscopoRepositoryImpl());
        int id = Integer.parseInt(req.getParameter("id"));
        if(id > 0) {
            try{

                us.eliminaUsuario(id);
                req.setAttribute("success", "Usuario eliminado exitosamente.");
                req.getRequestDispatcher("view/login.jsp").forward(req, resp);

            } catch (RuntimeException e) {
                req.setAttribute("error", e.getMessage());
                req.getRequestDispatcher("view/login.jsp").forward(req, resp);
            }

        }



    }
}
