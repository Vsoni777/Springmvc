package com.viv.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viv.dao.*;

import com.viv.model.Doctorfrom;

@Service()
public class DoctorService {
	
	
	@Autowired
	private	DocDao ddao;
	
	public String save(Doctorfrom doc) {
		return this.ddao.saveDoctor(doc);
	}

	public List<Doctorfrom> alldoc(Doctorfrom doc){
		return this.ddao.loadalldoc(doc);
	}

	public List<Doctorfrom> getdoc(int did) {
		return this.ddao.getdoc(did);
	}

}
