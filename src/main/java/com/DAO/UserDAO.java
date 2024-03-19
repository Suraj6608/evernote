package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.xml.transform.Result;

import com.User.UserDetails;
import com.User.admindetails;
import com.mysql.cj.protocol.Resultset;

public class UserDAO {
	private Connection  conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addUser(UserDetails us)
	{
		boolean f=false;
		
		try {
			String query="insert into user(name,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			//ps.executeQuery();
			ps.executeUpdate();
			
			String que="select * from user where email=?";
			PreparedStatement ps1=conn.prepareStatement(que);
			
			
			
			ps1.setString(1, us.getEmail());
			ResultSet rs=ps1.executeQuery();
			//ResultSet rs=ps.executeQuery("select * from user where email=?");
			
			//ps.executeUpdate();
			if(!rs.next()) {
				ps.executeUpdate(query);
			}
			else {
				System.out.println("Already exists!!!!");
			}
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	public UserDetails loginUser(UserDetails us)
	{
		
		UserDetails user=null;
		try {
			String query="select * from user where email=? and password=?";
			
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getPassword());
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				user=new UserDetails();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword("password");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
	}
		return user;
	}
	public admindetails admindetails(admindetails ad) {
		admindetails admin=null;
		try {
			String query="select * from admin where adminemail=? and adminpassword";
			
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, ad.getAdminemail());
			ps.setString(2, ad.getAdminpassword());
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				admin=new admindetails();
				admin.setId(rs.getInt("id"));
				admin.setAdminemail(rs.getString("adminemail"));
				admin.setAdminpassword(rs.getString("adminpassword"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}

 /* private boolean emailExists(String us) {
        String query = "SELECT COUNT(*) FROM users WHERE email = ?";
        try  {
        	
            PreparedStatement ps= conn.prepareStatement(query);
            UserDetails email;
			ps.setString(1, email.getEmail());;
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
}
	
}
*/