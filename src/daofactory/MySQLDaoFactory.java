package daofactory;

import java.sql.Connection;
import java.sql.DriverManager;

import dao.interfaces.IncidenteDao;
import dao.interfaces.TipoIncidenteDao;
import dao.interfaces.UsuarioDao;
import dao.mysql.MySql_IncidenteDao;
import dao.mysql.MySql_TipoIncidenteDao;
import dao.mysql.MySql_UsuarioDao;

public class MySQLDaoFactory extends DaoFactory {

	public static Connection obtenerConexion() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/crimeloc_db";
			con = DriverManager.getConnection(url, "root", "root");

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
			System.out.print("problema de conexion");
		}

		return con;
	}

	public UsuarioDao obtenerUsuarioDao() {
		return new MySql_UsuarioDao();
	}

	public IncidenteDao obtenerIncidenteDao() {
		return new MySql_IncidenteDao();
	}

	@Override
	public TipoIncidenteDao obtenerTipoIncidenteDao() {
		return new MySql_TipoIncidenteDao();
	}

}
