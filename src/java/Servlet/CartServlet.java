/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jpa.model.ShoppingCart;

/**
 *
 * @author DEMO TEST
 */
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        if(cart==null){
            session.setAttribute("emptycart", "Your cart is Empty , Please buy Something :D");
            session.setAttribute("hundredshow", 0);
            session.setAttribute("total", 0);
        }
        else{
             session.setAttribute("hundredshow", "100 ฿");
             session.setAttribute("total", cart.getTotalPrice()+100);
             session.setAttribute("emptycart", null);
        }
        getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
