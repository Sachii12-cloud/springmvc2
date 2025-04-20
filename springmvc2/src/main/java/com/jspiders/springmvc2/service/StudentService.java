	package com.jspiders.springmvc2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.springmvc2.dao.StudentDAO;
import com.jspiders.springmvc2.dto.Student;

import java.util.List;

import javax.persistence.NoResultException;


@Component

public class StudentService {
     
	@Autowired
	private StudentDAO studentDAO;

	public boolean addStudent(String name, String email, long mobile, String course) {
		Student student = new Student();
		student.setName(name);
		student.setEmail(email);
		student.setMobile(mobile);
		student.setCourse(course);
		try {
			studentDAO.addStudent(student);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Student> findAllStudents() {
		List<Student> students = studentDAO.findAllStudents();
		if (students.size() > 0)
			return students;
		else
			return null;
	}
	


	public boolean deleteStudentById(int id) {
		try {
			studentDAO.deleteStudentById(id);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
			
		}
		
	}
	
	public Student findStudentById(int id) {
		return studentDAO.findStudentById(id);
	}
	
	public boolean updateStudent(int id, String name, String email, long mobile, String course) {
		try {
			studentDAO.updateStudent(id, name, email, mobile, course);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public Student findStudentByMobile(long mobile) {
	    try {
	    	  return studentDAO.findStudentByMobile(mobile);
	    	  
	    }catch(NoResultException e) {
	    	e.printStackTrace();
	    	return null;
	    	
	    }
	      
	     
	}

}
