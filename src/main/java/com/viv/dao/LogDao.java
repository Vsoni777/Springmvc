package com.viv.dao;



import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.viv.model.Puserinfo;
import com.viv.model.Userinfo;
@Repository
public class LogDao{
    @Autowired
	private HibernateTemplate hibernateTemplate;
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
	@Transactional
	public int saveUser(Userinfo user) {
		int id = (Integer) this.hibernateTemplate.save(user);
		return id;
	}
	@SuppressWarnings("unchecked")
	@Transactional
	public Userinfo authenticate(Userinfo user) {
		DetachedCriteria d=DetachedCriteria.forClass(Userinfo.class);
		d.add(Restrictions.eq("username",user.getUsername()));
		d.add(Restrictions.eq("password", user.getPassword()));
	
		List<Userinfo> lst=(List<Userinfo>)this.hibernateTemplate.findByCriteria(d);
		System.out.println("in logdao"+lst);
		
		  if(lst!=null&&lst.size()>0) { return lst.get(0); }
		 
		return null;
	}
	@Transactional
	public int savepuser(Puserinfo puser) {
		int id=(Integer) this.hibernateTemplate.save(puser);
		return id;
	}
	
	public Puserinfo pauthenticate(@Valid Puserinfo puser) {
		DetachedCriteria d=DetachedCriteria.forClass(Puserinfo.class);
		d.add(Restrictions.eq("username",puser.getUsername()));
		d.add(Restrictions.eq("password", puser.getPassword()));
	
		@SuppressWarnings("unchecked")
		List<Puserinfo> lst=(List<Puserinfo>)this.hibernateTemplate.findByCriteria(d);
		System.out.println("in logdao"+lst);
		
		  if(lst!=null&&lst.size()>0) { 
			  return lst.get(0);
					  }
		 
		return null;
	}

}

