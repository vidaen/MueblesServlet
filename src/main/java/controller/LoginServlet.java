package controller;

import dao.UserDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        boolean usuarioValido = userDao.validarUsuario(email, password);

        // Redirigir según la validación
        //ponete un if con los parametros iguales a email=admin@prueba y password=admin claro usando equals
        if (usuarioValido) {
            response.sendRedirect("/Grupo8/gestionUsuario.html");
        } else {
            response.sendRedirect("index.html");
        }
    }
}
