package com.ecommerce.Servlet;

import com.ecommerce.Dao.registerDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.ecommerce.entitites.registerEntities;
import com.ecommerce.helper.factoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import javax.servlet.annotation.MultipartConfig;
/**
 *
 * @author Majid
 */
@MultipartConfig
public class registerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              
            String userName = request.getParameter("userName");
            String userEmail = request.getParameter("userEmail");
            String userPassword = request.getParameter("userPassword");
            String userPhone = request.getParameter("userPhone");
            Part part = request.getPart("userImage");
              
            
            try {
               
                registerEntities userDetails = new registerEntities(userName, userEmail, userPassword, userPhone, "normal", part.getSubmittedFileName());
                
                registerDao register = new registerDao(factoryProvider.getFactory());
                
                register.saveUserDetails(userDetails);
                
            }catch(Exception e){
                e.printStackTrace();
            }
            
            //For image save on this path
            String path = request.getRealPath("components")+File.separator+"logo"+File.separator+part.getSubmittedFileName();
            
            FileOutputStream fos = new FileOutputStream(path);
            InputStream is = part.getInputStream();
            
            byte[] data  = new byte[is.available()];
            
            is.read(data);
            fos.write(data);
            
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("alertMessage", "Registered successfully");
            response.sendRedirect("loginPage.jsp");
            
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
