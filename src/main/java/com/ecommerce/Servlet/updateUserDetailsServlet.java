
package com.ecommerce.Servlet;

import com.ecommerce.Dao.registerDao;
import com.ecommerce.entitites.registerEntities;
import com.ecommerce.helper.factoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
public class updateUserDetailsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int Id = Integer.parseInt(request.getParameter("userId"));
            String name  = request.getParameter("userName");
            String email  = request.getParameter("userEmail");
            String password  = request.getParameter("userPassword");
            String phone  = request.getParameter("userPhone");
            String type = request.getParameter("userType");
            Part part = request.getPart("userImage");
            
            
            try{
                
                registerEntities userUpdatesDetails = new registerEntities(Id, name, email, password, phone, type, part.getSubmittedFileName());
                
                registerDao registerdao = new registerDao(factoryProvider.getFactory());
                
                registerdao.updateUserDetails(userUpdatesDetails);
               
                
            }catch(Exception e){
                e.printStackTrace();
            }
            
              //For image Update on this path
            String path = request.getRealPath("components")+File.separator+"logo"+File.separator+part.getSubmittedFileName();
            
            FileOutputStream fos = new FileOutputStream(path);
            InputStream is = part.getInputStream();
            
            byte[] data = new byte[is.available()];
            
            is.read(data);
            fos.write(data);
            
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("alertMessage", "Updated successfully");
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
