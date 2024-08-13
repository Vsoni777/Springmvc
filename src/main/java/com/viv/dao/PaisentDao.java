package com.viv.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.viv.model.Doctorfrom;
import com.viv.model.Paitent;
@Repository
public class PaisentDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
	
	@Transactional
	@SuppressWarnings("unchecked")
	public String psave(Paitent paisent ) {
		System.out.println("patient from data"+paisent);
		
		
		int count= (int)this.hibernateTemplate.save(paisent);
			DetachedCriteria d=DetachedCriteria.forClass(Paitent.class);
			d.add(Restrictions.eq("email",paisent.getEmail()));
			
			List<Paitent> lst=(List<Paitent>)this.hibernateTemplate.findByCriteria(d);
			String email=lst.get(0).getEmail();
			if(email!=null) {
				return email;
			}
		return null;
	}

	@SuppressWarnings("deprecation")
	public List<Paitent> getpaisent(String email)throws DataAccessException {
		Paitent p=new Paitent();
		p.setEmail(email);
        System.out.println("in paitent"+email);
        String query="from Paitent where email = :email";
		@SuppressWarnings("unchecked")
		List<Paitent> lst=(List<Paitent>)this.hibernateTemplate.findByNamedParam(query, "email",email);
		System.out.println(lst);
	return lst;
	}

	public List<Paitent> allpaisent(Paitent paitent) {
		
		List<Paitent> lst=this.hibernateTemplate.loadAll(Paitent.class);
		System.out.println("in pdao"+lst);
		if(lst!=null) {
			return lst;
		}else {
			return null;
		}
	}
}

