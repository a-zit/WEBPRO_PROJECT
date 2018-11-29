/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;
import jpa.model.ShoppingCart;
import jpa.model.Payment;
import jpa.model.controller.PaymentJpaController;

/**
 *
 * @author DEMO TEST
 */
public class PaymentServlet extends HttpServlet {

    @PersistenceUnit(unitName = "LycanStorePU")
    EntityManagerFactory emf;
    @Resource
    UserTransaction utx;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        if (cart == null) {
            getServletContext().getRequestDispatcher("/ProductList").forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/payment.jsp").forward(request, response);
        }
        session.setAttribute("paymentalert", null);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String statefull = request.getParameter("statefull");
        String telno = request.getParameter("telno");
        String zipcode = request.getParameter("zipcode");

        String cardno = request.getParameter("cardno");
        String cardname = request.getParameter("cardname");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String cvv = request.getParameter("cvv");

        PaymentJpaController paymentJpaController = new PaymentJpaController(utx, emf);
        Payment paymentfromdb = paymentJpaController.findPaymentByCard(cardno);

        if (paymentJpaController.findPaymentByCard(cardno) == null) {
            try {
                Payment payment = new Payment(cardno, cardname, month, year, cvv);
                paymentJpaController.create(payment);

                getServletContext().getRequestDispatcher("/paymentComplete.jsp").forward(request, response);

            } catch (Exception ex) {
                Logger.getLogger(PaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            getServletContext().getRequestDispatcher("/paymentComplete.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
