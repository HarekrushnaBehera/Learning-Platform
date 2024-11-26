package com.org.serviceinter;

import java.util.List;

import com.org.dto.Task;

public interface TaskServiceInter {
	
	boolean addTask(Task t);
	
	List<Task> viewAllTask();
	
	void deleteTask(int id);
}
