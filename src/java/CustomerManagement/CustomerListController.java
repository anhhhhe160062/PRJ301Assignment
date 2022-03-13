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
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hai Anh
 */
public class CustomerListController extends HttpServlet {

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
        CustomerDAO customerdb = new CustomerDAO();
        ArrayList list = customerdb.getAll();

//        PrintWriter out = response.getWriter();
//        if(list.isEmpty()){
//            out.print("gdfgds");
//        }
//        for(int i = 0; i < list.size(); i++){
//            out.println("abcd");
//        }
        //generate sample data
//        for (int i = 15; i < 30; i++) {
//            Customer c = new Customer("customerNo" + i, 123456789, i, 3);
//            customerdb.updateCustomer(c);
//        }
        int pageNumber, numberPerPage = 10;
        int size = list.size();
        int numberOfPages = (size % numberPerPage == 0 ? (size / numberPerPage) : ((size / numberPerPage) + 1));
        String xPageNumber = request.getParameter("pageNumber");
        if (xPageNumber == null) {
            pageNumber = 1;
        } else {
            pageNumber = Integer.parseInt(xPageNumber);
        }
        int start, end;
        start = (pageNumber - 1) * numberPerPage;
        end = Math.min(pageNumber * numberPerPage, size);
        ArrayList<Customer> customerListByPage = customerdb.getListByPage(list, start, end);

        request.setAttribute("customerList", customerListByPage);
        request.setAttribute("pageNumber", pageNumber);
        request.setAttribute("numberOfPages", numberOfPages);
        request.getRequestDispatcher("CustomerManagement.jsp").forward(request, response);
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
