package com.viv.dao;

import java.util.List;

import javax.persistence.Transient;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.viv.model.Appointment;
@Repository
public class Apdao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
	@Transactional
	public int save(Appointment ap) {
		int count=(int)this.hibernateTemplate.save(ap);
		return count;
	}
	
	public List<Appointment> getAllrecord(Appointment ap) {
		 List<Appointment> list=this.hibernateTemplate.loadAll(Appointment.class);
		 System.out.println("in apsao"+list);
		if(list!=null) {
			return list;
		}else {
				return null;
		}
	}
	@Transactional
	public int updateap(int apid,String status) {
		int count=0;
		Appointment ap=this.hibernateTemplate.get(Appointment.class,apid);
		if(ap!=null) {
			ap.setStatus(status);
		this.hibernateTemplate.update(ap);
		count++;
		}
		return count;
	}
}
