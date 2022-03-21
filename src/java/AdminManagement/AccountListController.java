/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminManagement;

import DAL.AccountDAO;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hai Anh
 */
public class AccountListController extends HttpServlet {

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
        //authentication requirement
        HttpSession session = request.getSession();
        if(session.getAttribute("account") == null){
            PrintWriter out = response.getWriter();
            out.print("abcd");
            request.getRequestDispatcher("index.html").forward(request, response);
        }
        
        AccountDAO accountdb = new AccountDAO();
        ArrayList list = accountdb.getAll();

//        PrintWriter out = response.getWriter();
//        for(int i = 0; i < list.size(); i++){
//            out.println(list.get(i));
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
        ArrayList<Account> accountListByPage = accountdb.getListByPage(list, start, end);

        request.setAttribute("accountList", accountListByPage);
        request.setAttribute("pageNumber", pageNumber);
        request.setAttribute("numberOfPages", numberOfPages);
        request.getRequestDispatcher("AdminManagement.jsp").forward(request, response);
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
