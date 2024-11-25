package com.org.daointer;

import java.util.List;

import com.org.dto.Mcq;

public interface McqDaoInter {
	
	boolean addMcq(Mcq m);
	
	List<Mcq> viewAllMcq();
	
	void deleteMcq(int id);
}
