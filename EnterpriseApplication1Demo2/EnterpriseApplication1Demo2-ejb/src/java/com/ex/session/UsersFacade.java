/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ex.session;

import com.ex.entity.Users;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> implements UsersFacadeLocal {

    @PersistenceContext(unitName = "EnterpriseApplication1Demo2-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }
    
 
    @Override
    public boolean checkLogin(String username, String password) {
         Query query =em.createNamedQuery("Users.checkLogin");
        query.setParameter("username", username);
         query.setParameter("password", password);
         try{
             query.getSingleResult();
             return true;
         }catch(Exception ex){
             
         }
         return false;
    }
    
}