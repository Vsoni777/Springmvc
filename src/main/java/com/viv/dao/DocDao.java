package com.viv.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;


import com.viv.model.Doctorfrom;
import com.viv.model.Paitent;


@Repository
public class DocDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
	

	@Transactional
	@SuppressWarnings("unchecked")
	public String saveDoctor(Doctorfrom doc ) {
		System.out.println("doctor from data"+doc);
		
		
		int count= (int)this.hibernateTemplate.save(doc);
			DetachedCriteria d=DetachedCriteria.forClass(Doctorfrom.class);
			d.add(Restrictions.eq("email",doc.getEmail()));
			
			List<Doctorfrom> lst=(List<Doctorfrom>)this.hibernateTemplate.findByCriteria(d);
			String email=lst.get(0).getEmail();
			if(email!=null) {
				return email;
			}
		return null;
	}


	public List<Doctorfrom> loadalldoc(Doctorfrom doc) {
		List<Doctorfrom> lst=this.hibernateTemplate.loadAll(Doctorfrom.class);
		if(lst!=null) {
			return lst;
		}else {
			return null;
		}
	}


	public List<Doctorfrom> getdoc(int did) {
		 String query="from Doctorfrom where did = :did";
			@SuppressWarnings({ "unchecked", "deprecation" })
			List<Doctorfrom> lst=(List<Doctorfrom>)this.hibernateTemplate.findByNamedParam(query, "did",did);
			System.out.println(lst);
		return lst;
		
	}
}
