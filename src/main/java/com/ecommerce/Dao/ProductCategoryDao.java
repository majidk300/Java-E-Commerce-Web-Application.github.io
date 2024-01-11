
package com.ecommerce.Dao;

import com.ecommerce.entitites.addProductsEntities;
import com.ecommerce.entitites.productCategoryEntities;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ProductCategoryDao {
    
    private SessionFactory factory;
    
    public ProductCategoryDao(SessionFactory factory){
        this.factory = factory;
    }
    
    public boolean saveCategory(productCategoryEntities pCategory){
        
        boolean flag = false;
        
        try{
            
            Session s = this.factory.openSession();
            
            Transaction tx = s.beginTransaction();
            
            s.save(pCategory);
            
            tx.commit();
            s.close();
            
            return flag = true;
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
        return flag;
    }
    
    public List<productCategoryEntities> getAllCategory(){
        List<productCategoryEntities> category = null;
        
        try {
            
            Session s = this.factory.openSession();
            
            Query query  = s.createQuery("from productCategoryEntities");
            
            category = query.list();
            
            s.close();
            
            return category;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return category;
    }
    
    public productCategoryEntities getCategoryById(int  cId){
        
        productCategoryEntities cat = null;
        
        try {
            
            Session s = this.factory.openSession();
            
            cat = s.get(productCategoryEntities.class, cId);
            
            s.close();
            
            return cat;
            
        }catch (Exception e){
            e.printStackTrace();
        }        
        
        return  cat;
        
    }
    
//   .............................................................................................................
//   .............................................................................................................
//   .............................................................................................................
    
//    Create new Products
    
      public boolean saveProducts(addProductsEntities products){
            
          boolean flag = false;
          
          try{
              
              Session  s = this.factory.openSession();
              Transaction tx = s.beginTransaction();
              
              s.save(products);
              
              tx.commit();
              s.close();
              
              return flag = true;
              
          }catch(Exception e){
              e.printStackTrace();
          }
          
          return flag;
      }
      
//      GET ALL  PRODUCTS WITH LIMIT
      public List<addProductsEntities> getAllProducts() {
          List<addProductsEntities> products = null;
          
          try {
              
              Session s = this.factory.openSession();
              String query  =  "from  addProductsEntities order by  id desc";
              
              Query q = s.createQuery(query);
              
              q.setMaxResults(8);
              
              products = q.list();
              
              s.close();
              
          }catch(Exception e){
              e.printStackTrace();
          }
          
          return products;
          
      }
      
//      GET ALL PRODUCTS WITHOUT LIMITS
      public List<addProductsEntities> getAllProductWithoutLimit(){
          
          List<addProductsEntities> list = null;
          
          
          try{
              
              Session s = this.factory.openSession();
              
              String  query = "from  addProductsEntities order by  id desc";
              
              Query q = s.createQuery(query);
              
              list  = q.list();
              
              s.close();
              
          }catch (Exception e){
              e.printStackTrace();
          }
          
          return list;
          
      }
      
//      GET PRODUCTS BY ID 
      public addProductsEntities getProductsById(int id){
          
          addProductsEntities products = null;
          
          try {
              
              Session s = this.factory.openSession();
              String query = "from addProductsEntities where id=:id ";
              
              Query q = s.createQuery(query);
              
              q.setParameter("id", id);
              
              products = (addProductsEntities)  q.uniqueResult();
              
              s.close();
    
          }catch (Exception e){
              e.printStackTrace();
          }
          
          return products;
      }
      
      
//      UPDATING PRODUCTS
      
      public boolean updateProducts(addProductsEntities updateProsucts){
          
          boolean p = false;
          
          try{
              
              Session s = this.factory.openSession();
              Transaction tx = s.beginTransaction();
              
              String hql = 
                      "update addProductsEntities set ProductTile=:title, ProductLabel=:desc, ProductPrice=:price where id=:id";
              
              Query query = s.createQuery(hql);
              
              query.setParameter("title",  updateProsucts.getProductTile());
              query.setParameter("desc",  updateProsucts.getProductLabel());
              query.setParameter("price",  updateProsucts.getProductPrice());
              query.setParameter("id",  updateProsucts.getId());
              
              int result = query.executeUpdate();
              
              tx.commit();
              s.close();
              
              return p=true;
              
          }catch(Exception e){
              System.out.println("Database error");
              e.printStackTrace();
          }
          
          return p; 
          
      }
      
//      DELETE PRODUCT- ID
       
      public boolean deleteProduct(int pId){
          
           boolean f  =false;
          
           try{
               
               Session s = this.factory.openSession();
               Transaction tx = s.beginTransaction();
               
               String q = "delete addProductsEntities where id=:id";
              
               Query query = s.createQuery(q);
               
               query.setParameter("id", pId);
               
               int result = query.executeUpdate();
               
               tx.commit();
               s.close();
               
               return f = true;
               
           }catch(Exception e){
               e.printStackTrace();
           }
          
           return f;
          
      }
    
}
