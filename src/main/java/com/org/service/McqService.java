package com.org.service;

import java.util.List;

import com.org.dao.McqDao;
import com.org.daointer.McqDaoInter;
import com.org.dto.Mcq;
import com.org.serviceinter.McqServiceInter;

public class McqService implements McqServiceInter {
	
	McqDaoInter mdao = new McqDao();

	@Override
	public boolean addMcq(Mcq m) {
		return mdao.addMcq(m);
	}

	@Override
	public List<Mcq> viewAllMcq() {
		return mdao.viewAllMcq();
	}

	@Override
	public void deleteMcq(int id) {
		mdao.deleteMcq(id);
		
	}

}
