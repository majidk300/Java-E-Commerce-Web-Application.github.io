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
import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
public class AddProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String title = request.getParameter("title");
            String description = request.getParameter("description");
            Part imageOne = request.getPart("imageOne");
            Part imageTwo = request.getPart("imageTwo");
            Part imageThree = request.getPart("imageThree");
            Part imageFour = request.getPart("imageFour");
            int catId = Integer.parseInt(request.getParameter("ProductCategoryOptions"));
            int price = Integer.parseInt(request.getParameter("price"));

            ProductCategoryDao categoryID = new ProductCategoryDao(factoryProvider.getFactory());
            productCategoryEntities cat = categoryID.getCategoryById(catId);

            try {

                addProductsEntities products = new addProductsEntities();

                products.setProductTile(title);
                products.setProductLabel(description);
                products.setImageOne(imageOne.getSubmittedFileName());
                products.setImageTwo(imageTwo.getSubmittedFileName());
                products.setImageThree(imageThree.getSubmittedFileName());
                products.setImageFour(imageFour.getSubmittedFileName());
                products.setCategories(cat);
                products.setProductPrice(price);

                ProductCategoryDao newDao = new ProductCategoryDao(factoryProvider.getFactory());

                newDao.saveProducts(products);

            } catch (Exception e) {
                e.printStackTrace();
            }

            //FOR FIrST IMAGE
            String path1 = request.getRealPath("components") + File.separator + "image" + File.separator + "products" + File.separator + imageOne.getSubmittedFileName();
            FileOutputStream fos1 = new FileOutputStream(path1);
            InputStream is1 = imageOne.getInputStream();
            
            byte[] data1 = new byte[is1.available()];
            
            is1.read(data1);
            fos1.write(data1);

            //FOR SECOND IMAGE
            String path2 = request.getRealPath("components") + File.separator + "image" + File.separator + "products" + File.separator + imageTwo.getSubmittedFileName();
            FileOutputStream fos2 = new FileOutputStream(path2);
            InputStream is2 = imageTwo.getInputStream();
            
            byte[] data2 = new byte[is2.available()];
            
            is2.read(data2);
            fos2.write(data2);
            
            //FOR THIRD IMAGE
            String path3 = request.getRealPath("components") + File.separator + "image" + File.separator + "products" + File.separator + imageThree.getSubmittedFileName();
             FileOutputStream fos3 = new FileOutputStream(path3);
            InputStream is3 = imageThree.getInputStream();
            
            byte[] data3 = new byte[is3.available()];
            
            is3.read(data3);
            fos3.write(data3);
            
            //FOR FOUR IMAGE
            String path4 = request.getRealPath("components") + File.separator + "image" + File.separator + "products" + File.separator + imageFour.getSubmittedFileName();
            FileOutputStream fos4 = new FileOutputStream(path4);
            InputStream is4 = imageFour.getInputStream();
            
            byte[] data4 = new byte[is4.available()];
            
            is4.read(data4);
            fos4.write(data4);
             
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("categorymessage", "Added Product");
            response.sendRedirect("AdminPageAddProduct.jsp");

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
