package dao.mysql;

import java.sql.*;
import java.util.Vector;
import beans.IncidenteBean;
import dao.interfaces.IncidenteDao;
import daofactory.MySQLDaoFactory;

public class MySql_IncidenteDao extends MySQLDaoFactory implements IncidenteDao {

	@Override
	public boolean insertarIncidente(IncidenteBean incidente) {
		boolean flag = false;

		int id_tipo_incidente = incidente.getId_tipo_incidente();
		String ub_latitud = incidente.getUb_latitud();
		String ub_longitud = incidente.getUb_longitud();
		String descripcion = incidente.getDescripcion();
		Date timestamp = (Date) incidente.getTimestamp();
		int id_usuario = incidente.getId_usuario();

		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "insert into Incidente (id_tipo_incidente,ub_latitud,ub_longitud,descripcion,timestamp,id_usuario) values"
					+ "("
					+ id_tipo_incidente
					+ ","
					+ ub_latitud
					+ ",'"
					+ ub_longitud
					+ "','"
					+ descripcion
					+ "','"
					+ timestamp
					+ "','" + id_usuario + "')";
			int filas = stmt.executeUpdate(sql);
			if (filas == 1) {
				flag = true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}

	@Override
	public boolean eliminarIncidente(int id_incidente) {
		boolean flag = false;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "delete from Incidente where id_incidente="
					+ id_incidente;
			int filas = stmt.executeUpdate(sql);
			if (filas == 1) {
				flag = true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}

	@Override
	public Vector<IncidenteBean> listarTodo() {
		Vector<IncidenteBean> incidentes = new Vector<IncidenteBean>();
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from Incidente";
			ResultSet rs = stmt.executeQuery(sql);
			IncidenteBean incidente = null;
			while (rs.next()) {
				incidente = new IncidenteBean();
				incidente.setDescripcion(rs.getString("descripcion"));
				incidente.setId_incidente(rs.getInt("id_incidente"));
				incidente.setId_tipo_incidente(rs.getInt("id_tipo_incidente"));
				incidente.setId_usuario(rs.getInt("id_usuario"));
				incidente.setTimestamp(rs.getDate("timestamp"));
				incidente.setUb_latitud(rs.getString("ub_latitud"));
				incidente.setUb_longitud(rs.getString("ub_longitud"));

				incidentes.add(incidente);

			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return incidentes;
	}

	@Override
	public Vector<IncidenteBean> listarPorUsuario(int id_usuario) {
		Vector<IncidenteBean> incidentes = new Vector<IncidenteBean>();
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from Incidente where id_usuario = "
					+ id_usuario;
			ResultSet rs = stmt.executeQuery(sql);
			IncidenteBean incidente = null;
			while (rs.next()) {
				incidente = new IncidenteBean();
				incidente.setDescripcion(rs.getString("descripcion"));
				incidente.setId_incidente(rs.getInt("id_incidente"));
				incidente.setId_tipo_incidente(rs.getInt("id_tipo_incidente"));
				incidente.setId_usuario(rs.getInt("id_usuario"));
				incidente.setTimestamp(null);
				// rs.getDate("timestamp")
				incidente.setUb_latitud(rs.getString("ub_latitud"));
				incidente.setUb_longitud(rs.getString("ub_longitud"));

				incidentes.add(incidente);

			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return incidentes;
	}

	@SuppressWarnings("null")
	@Override
	public IncidenteBean obtenerIncidente(int id_incidente) {
		IncidenteBean incidente = null;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from Incidente where id_incidente="
					+ id_incidente;

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				incidente.setDescripcion(rs.getString("descripcion"));
				incidente.setId_incidente(rs.getInt("id_incidente"));
				incidente.setId_tipo_incidente(rs.getInt("tipo_incidente"));
				incidente.setId_usuario(rs.getInt("id_usuario"));
				incidente.setTimestamp(rs.getDate("timestamp"));
				incidente.setUb_latitud(rs.getString("latitud"));
				incidente.setUb_longitud(rs.getString("ub_longitud"));
			}

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return incidente;

	}

}
