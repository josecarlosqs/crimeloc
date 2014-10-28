package daofactory;

import java.sql.Connection;  
import java.sql.DriverManager;

import dao.interfaces.UsuarioDao;
import dao.mysql.MySql_UsuarioDao;



public class MySQLDaoFactory extends DaoFactory {

	public static Connection obtenerConexion(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");		
			String url = "jdbc:mysql://localhost:3306/mydb";
			con = DriverManager.getConnection(url, "root", "root");		
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return con;
	}
	
	public UsuarioDao obtenerUsuarioDao() {
		return new MySql_UsuarioDao();
	}
	
}
	