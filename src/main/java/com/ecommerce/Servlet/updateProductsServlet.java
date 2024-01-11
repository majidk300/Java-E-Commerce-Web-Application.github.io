package com.ecommerce.Servlet;

import com.ecommerce.Dao.ProductCategoryDao;
import com.ecommerce.entitites.addProductsEntities;
import com.ecommerce.entitites.productCategoryEntities;
import com.ecommerce.helper.factoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class updateProductsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int id = Integer.parseInt(request.getParameter("proId"));
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));

                try {
                    
                    if(title!=null){
                        
                        out.println(id);
                        out.println(title);
                        out.println(description);
                        out.println(price);
                        
                        
                    }

                    addProductsEntities products = new addProductsEntities();
                    
                    products.setId(id);
                    products.setProductTile(title);
                    products.setProductLabel(description);
                    products.setProductPrice(price);
                    
                    ProductCategoryDao newDao = new ProductCategoryDao(factoryProvider.getFactory());
                    
                    newDao.updateProducts(products);
                    

                } catch (Exception e) {
                    e.printStackTrace();
                    
                }
        
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("categorymessage", "Updated Product");
            response.sendRedirect("AdminPageUpdateProduct.jsp");

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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
