package com.org.serviceinter;

import java.util.List;

import com.org.dto.Mcq;

public interface McqServiceInter {
	
	boolean addMcq(Mcq m);
	
	List<Mcq> viewAllMcq();
	
	void deleteMcq(int id);
}
