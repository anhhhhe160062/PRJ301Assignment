/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CustomerManagement;

import DAL.CustomerDAO;
import Model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hai Anh
 */
public class UpdateCustomerController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateCustomerController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCustomerController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String id = request.getParameter("id");
        CustomerDAO db = new CustomerDAO();
        Customer c = db.getCustomer(Integer.parseInt(id));
//        PrintWriter out = response.getWriter();
//        out.print(c);
        request.setAttribute("customer", c);
        request.getRequestDispatcher("UpdateCustomer.jsp").forward(request, response);
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
        String customerID = request.getParameter("customerID");
        String Name = request.getParameter("Name");
        String phoneNumber = request.getParameter("phoneNumber");
        String shopPoints = request.getParameter("shopPoints");
        String purchaseID = request.getParameter("purchaseID");
        String discountID = request.getParameter("discountID");
        String shopID = request.getParameter("shopID");

        Customer c = new Customer(Integer.parseInt(customerID), Name, Integer.parseInt(phoneNumber), Integer.parseInt(shopPoints), Integer.parseInt(purchaseID), Integer.parseInt(discountID), Integer.parseInt(shopID));
        CustomerDAO db = new CustomerDAO();
        db.updateCustomer(c);
//        PrintWriter out = response.getWriter();
//        out.print(c);
        response.sendRedirect("CustomerListController");
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
