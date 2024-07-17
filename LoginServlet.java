package com.Bank.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bank.Bean.LoginBean;
import com.Bank.Database.LoginDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String account_number = request.getParameter("accno");
        String password = request.getParameter("password");

        LoginBean bean = new LoginBean();
        bean.setAccno(account_number);
        bean.setPassword(password);

        LoginDao logindao = new LoginDao();

        if (logindao.validate(bean)) {
            out.println("Success");
        } else {
            out.println("Failed");
        }
    }
}
