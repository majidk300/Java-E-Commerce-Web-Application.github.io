
package com.ecommerce.Dao;

import com.ecommerce.entitites.registerEntities;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;

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
    
}
