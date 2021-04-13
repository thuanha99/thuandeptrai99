/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.HDVaydao;
import entity.HDVay;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thuan
 */
@WebServlet(name = "UpdateControl", urlPatterns = {"/update"})
public class UpdateControl extends HttpServlet {

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
            out.println("<title>Servlet UpdateControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateControl at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
        String id = request.getParameter("sid");
        HDVaydao dao = new HDVaydao();
        HDVay h = dao.getHDVaybyID(id);
        request.setAttribute("st", h);
        request.getRequestDispatcher("Update.jsp").
                forward(request, response);
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
//        processRequest(request, response);
        int id = Integer.parseInt(request.getParameter("ID"));
        int hgoivayid = Integer.parseInt(request.getParameter("goivay"));
        int huserid = Integer.parseInt(request.getParameter("userID"));        
            Date hngayvay = Date.valueOf(request.getParameter("ngayvay"));                 
            Date hhan = Date.valueOf(request.getParameter("han"));       
        String htrangthai = request.getParameter("trangthai");
        float htienvay = Float.parseFloat(request.getParameter("tienvay"));
        HDVaydao dao = new HDVaydao();
        dao.suaHD(id, hgoivayid, huserid, hngayvay, hhan, htrangthai, htienvay);
        response.sendRedirect("load");
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
