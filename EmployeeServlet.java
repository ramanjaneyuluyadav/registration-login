package com.Servlet.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.Servlet.dao.EmployeeDao;
import java.lang.Integer;
import com.Servlet.model.Employee;


@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("executed ");
		
		String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        long contact = Long.parseLong(request.getParameter("contact"));
       
        Employee emp = new Employee();
        
		         emp.setFirstName(firstName);
		         emp.setLastName(lastName);
		         emp.setEmail(email);
		         emp.setPassword(password);
		         emp.setContact(contact);
		              
		
         
          
             EmployeeDao jdbc = new EmployeeDao();
            
                    ArrayList<Employee> obj;
                           try {
						        jdbc.Data(emp);//this one is insert data
						        obj = jdbc.selectallemp();//to show data
						        request.setAttribute("validate", obj);
						        RequestDispatcher r = request.getRequestDispatcher("/home.jsp");
						        r.include(request, response);
						        for(Employee x:obj){
						        	System.out.println(x.getEmp_id());
						        	System.out.println(x.getFirstName());
						        	System.out.println(x.getLastName());
						        	System.out.println(x.getEmail());
						        	System.out.println(x.getPassword());
						        	System.out.println(x.getContact());
						        }
							
						} catch (ClassNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}	
                           
					
					
						
	}



}
