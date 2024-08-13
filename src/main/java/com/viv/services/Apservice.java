package com.viv.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viv.dao.Apdao;
import com.viv.model.Appointment;
@Service
public class Apservice {
	@Autowired
	private Apdao apd;
	public int save(Appointment ap) {
		return this.apd.save(ap);
	}
	public List<Appointment> getAllrecord(Appointment ap) {
		
	
		return this.apd.getAllrecord(ap);
		
	}
	public int updateap(int ap_id,String status) {
		// TODO Auto-generated method stub
		return this.apd.updateap(ap_id,status);
	}

}
