package com.viv.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viv.dao.PaisentDao;
import com.viv.model.Paitent;

@Service
public class Pservice {
	@Autowired
	private PaisentDao pdao;
	public String save(Paitent paisent) {
		return this.pdao.psave(paisent);
	}
	public List getpaisent(String user) {
		return this.pdao.getpaisent(user);
		
	}
	public List<Paitent> allpaitent(Paitent paitent) {
		
		return this.pdao.allpaisent(paitent);
	}
}
