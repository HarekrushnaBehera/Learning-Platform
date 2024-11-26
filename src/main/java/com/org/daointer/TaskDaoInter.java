package com.org.daointer;

import java.util.List;

import com.org.dto.Task;

public interface TaskDaoInter {
	
	boolean addTask(Task t);
	
	List<Task> viewAllTask();
	
	void deleteTask(int id);
}
