package com.org.utility;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Helpers {
	
private static EntityManagerFactory emf;
	
	public static EntityManagerFactory getEMF() {
		if (emf == null)
			emf = Persistence.createEntityManagerFactory("learn");
		return emf;
	}
}
