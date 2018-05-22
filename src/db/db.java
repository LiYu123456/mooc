package db;
import java.sql.*;
public class db {
	private String dbDriver="com.mysql.jdbc.Driver";

	  //private String sConnStr = "jdbc:mysql://127.0.0.1:3306/jspwsjxsjfw?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&autoReconnectForPools=true&allowMultiQueries=true"; 
	  private String sConnStr = "jdbc:mysql://127.0.0.1:3306/mooc?useUnicode=true&characterEncoding=UTF-8";
	  public Connection connect = null;
	  public ResultSet rs=null;
	  public db() {
	    try {
	     
	      Class.forName(dbDriver).newInstance(); 
	     
	      connect = DriverManager.getConnection(sConnStr,"root","123456"); 
	     
	    }
	    catch (Exception ex) {
	      System.out.println("12121");
	    }
	  }
	  public static void main(String[] args) {
		  db d=new db();
		  ResultSet result=d.executeQuery("select * from youqinglianjie where 1=1 order by id desc limit 5");
		  try {
			while(result.next()) {
				  System.out.println(result.getString(1));
			  }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	  
	  public ResultSet executeQuery(String sql) {
			try{
				connect=DriverManager.getConnection(sConnStr,"root","123456");
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			}catch(SQLException ex){
				System.err.println(ex.getMessage());
			}
			return rs;
		}
	  public void closeConnection() throws SQLException {
		  if(connect!=null||!connect.isClosed()) {
			  connect.close();
		  }
		  connect=null;
	  }
	  public void executeUpdate(String sql)
	    {
	    	
	    	Statement stmt=null;
	    	rs=null;
	    	try
	    	{   connect=DriverManager.getConnection(sConnStr,"root","123456");
	    		stmt=connect.createStatement();
	    		stmt.executeUpdate(sql);
	    		stmt.close();
	    		connect.close();
	    		
	    	
	    	}
	    	catch(SQLException ex)
	    	{
	    		System.err.println(ex.getMessage());
	    		
	    		
	    	}
	    
	    	
	    }
}
