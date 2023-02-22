/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/HomeControl"})
public class HomeControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> list = DAO.getAll();
        HttpSession session = request.getSession(true);
        Cookie[] cookies = request.getCookies();
        int dem = 0;
        for (Cookie cooky : cookies) {
            if (cooky.getName().equals("sosanpham")) {
                dem = Integer.parseInt(cooky.getValue());
            }
        }
        Cookie demCookie = new Cookie("sosanpham", String.valueOf(dem));
        demCookie.setMaxAge(23 * 60 * 60);
        response.addCookie(demCookie);
        cookies = request.getCookies();
        String nameuser = null;
        boolean result = false;
        for (Cookie cooky : cookies) {
            if (cooky.getName().equals("username")) {
                nameuser = cooky.getValue();
            }
            if (cooky.getName().equals("sosanpham")) {
                dem = Integer.parseInt(cooky.getValue());
            }
        }
        if (nameuser!=null) {
            result = true;
        }
        request.setAttribute("sosanpham", dem);
        request.setAttribute("textr", result);
        request.setAttribute("nameuser", nameuser);
        session.setAttribute("listProd", list);
        RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
