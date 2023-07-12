package com.Servlet.model;

public class Employee {
	    private int emp_id;
	    private String firstName;
	    private String lastName;
	    private String email;
	    private String password;
	    private long contact;
	       

		public Employee(int emp_id,String firstName,String lastName,String email,String password,long contact) {
			// TODO Auto-generated constructor stub
			this.firstName=firstName;
			this.lastName=lastName;
			this.email=email;
			this.password=password;
			this.contact=contact;
		}



		public Employee() {
			// TODO Auto-generated constructor stub
		}



		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		public long getContact() {
			return contact;
		}
		public void setContact(long contact) {
			this.contact = contact;
		}

		public int getEmp_id() {
			return emp_id;
		}

		public void setEmp_id(int emp_id) {
			this.emp_id = emp_id;
		}
			    
}
