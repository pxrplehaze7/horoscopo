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


@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    UsuarioService us;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.us = new UsuarioService(new UsuarioRepositoryImpl(), new HoroscopoRepositoryImpl());
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String fechaNacimiento = req.getParameter("fechaNacimiento");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("rePassword");

        try {
            this.us.registraUsuario(name, username, email, fechaNacimiento, password, rePassword);
            req.setAttribute("success", "Usuario registrado exitosamente.");
            req.getRequestDispatcher("view/login.jsp").forward(req, resp);
        } catch (RuntimeException e) {
            req.setAttribute("error", e.getMessage());
            System.out.println(req.getAttribute("error"));
            req.getRequestDispatcher("view/register.jsp").forward(req, resp);
        }
    }
}
