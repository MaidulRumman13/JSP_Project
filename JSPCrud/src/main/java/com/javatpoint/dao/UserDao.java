package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.connector.Request;

import com.javatpoint.bean.User;
public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/test_02","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into register(uni_id,name,password,email,sex,campus,semester,batch,course) values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1,u.getUni_id());
		ps.setString(2,u.getName());
		ps.setString(3,u.getPassword());
		ps.setString(4,u.getEmail());
		ps.setString(5,u.getSex());
		ps.setString(6,u.getCampus());
		ps.setString(7,u.getSemester());
		ps.setString(8, u.getBatch());
		ps.setString(9, u.getCourse());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update register set uni_id=?,name=?,password=?,email=?,sex=?,campus=?,semester=?,batch=?,course=? where id=?");
		ps.setString(1,u.getUni_id());
		ps.setString(2,u.getName());
		ps.setString(3,u.getPassword());
		ps.setString(4,u.getEmail());
		ps.setString(5,u.getSex());
		ps.setString(6,u.getCampus());
		ps.setString(7,u.getSemester());
		ps.setString(8, u.getBatch());
		ps.setString(9, u.getCourse());
		ps.setInt(10,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from register where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setUni_id(rs.getString("uni_id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCampus(rs.getString("campus"));
			u.setSemester(rs.getString("semester"));
			u.setBatch(rs.getString("batch"));
			u.setCourse(rs.getString("course"));
			
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setId(rs.getInt("id"));
			u.setUni_id(rs.getString("uni_id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCampus(rs.getString("campus"));
			u.setSemester(rs.getString("semester"));
			u.setBatch(rs.getString("batch"));
			u.setCourse(rs.getString("course"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
