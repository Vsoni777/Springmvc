package com.viv.services;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viv.dao.LogDao;
import com.viv.model.Puserinfo;
import com.viv.model.Userinfo;


@Service
public class LService {
	    @Autowired
		LogDao ls;
	    
	   public int createUser(Userinfo user) {
			return this.ls.saveUser(user);
		}
	   
	   public Userinfo authenticate(Userinfo user) {
		   System.out.println("in lser"+user);
		   return this.ls.authenticate(user);
	   }

	public int createpUser(Puserinfo puser) {
		return this.ls.savepuser(puser);
	}

	public Puserinfo pauthenticate(@Valid Puserinfo puser) {
		return this.ls.pauthenticate(puser);
	}
}
