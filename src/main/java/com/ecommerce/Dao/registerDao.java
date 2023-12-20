
package com.ecommerce.Dao;

import com.ecommerce.entitites.registerEntities;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class registerDao {
    
    private SessionFactory factory;
    
    public registerDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public boolean saveUserDetails(registerEntities userRegister){
        
        boolean flag = false;
        
        try{
            
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            
            session.save(userRegister);
            
            tx.commit();
            session.close();
            
            return flag = true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return flag;
    }
    
//    For Validate user is Valid
    public registerEntities checkEmailAndPassword(String email, String password){
        
        registerEntities user = null;
        
        try{
            
            Session s = this.factory.openSession();
            
            Query q = s.createQuery("from registerEntities where userEmail=:e and userPassword=:p");
            
            q.setParameter("e", email);
            q.setParameter("p", password);
            
            user = (registerEntities) q.uniqueResult();
            
            s.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
    
    
    
    public List<registerEntities> getAllUserDetails(){
        
        List<registerEntities> users = null;
        
        try{
            
            Session s  = this.factory.openSession();
            
            Query q = s.createQuery("from registerEntities");
            
             users = q.list();
            
            s.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return users;
        
    }
    
}
