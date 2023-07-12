package com.Servlet.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import com.Servlet.model.Employee;

public interface interfaceone {
	public Connection dbconnection() throws ClassNotFoundException, SQLException;
	public void Data(Employee emp) throws ClassNotFoundException, SQLException;
}
