package com.Servlet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Servlet.model.Employee;

public class EmployeeDao implements interfaceone{
	
	public Connection dbconnection() throws ClassNotFoundException, SQLException{
		   Class.forName("com.mysql.cj.jdbc.Driver");
	       //connection
	       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/class", "root", "root");
		return con;
	}

	public void Data(Employee emp) throws ClassNotFoundException, SQLException {
		//loading
			Connection con = this.dbconnection();
            //statement using connection object
			
		
            PreparedStatement ps = con.prepareStatement("INSERT INTO employee (first_name,last_name,Email,password,contact) values(?,?,?,?,?)");
            ps.setString(1, emp.getFirstName());
            ps.setString(2, emp.getLastName());
            ps.setString(3, emp.getEmail());
            ps.setString(4, emp.getPassword());
            ps.setLong(5, emp.getContact());
          
            // Step 3: Execute the query or update query
            int n= ps.executeUpdate();
            if(n>0)
            	
            System.out.println(n+"rows inserted");
            
    	else
    		System.out.println("rows could't inserted");
    	  
        } 
	//data method ending

			
			public ArrayList<Employee> selectallemp() throws SQLException, ClassNotFoundException{
				Connection con = this.dbconnection();
				ArrayList<Employee> list=new ArrayList<Employee>();
				
				PreparedStatement ps1=con.prepareStatement("select * from employee");
				
			    ResultSet rs=ps1.executeQuery();
			    
			    System.out.println("Excuted DAO");
			    while(rs.next()){
			      
			    	Employee emp=new Employee();
			   	   emp.setEmp_id(rs.getInt(1));     
			       emp.setFirstName(rs.getString(2));
			       emp.setLastName(rs.getString(3));
			       emp.setEmail(rs.getString(4));
			       emp.setPassword(rs.getString(5));
			       emp.setContact(rs.getLong(6));
			       list.add(emp);
			    }   
			    return list;
			}
     }
     
