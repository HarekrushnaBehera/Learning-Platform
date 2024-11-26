package com.org.service;

import java.util.List;

import com.org.dao.TaskDao;
import com.org.daointer.TaskDaoInter;
import com.org.dto.Task;
import com.org.serviceinter.TaskServiceInter;

public class TaskService implements TaskServiceInter {
	
	TaskDaoInter tdao = new TaskDao();

	@Override
	public boolean addTask(Task t) {
		return tdao.addTask(t);
	}

	@Override
	public List<Task> viewAllTask() {
		return tdao.viewAllTask();
	}

	@Override
	public void deleteTask(int id) {
		tdao.deleteTask(id);
	}

}
