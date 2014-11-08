package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.IncidenteBean;
import beans.Tipo_IncidenteBean;
import dao.interfaces.TipoIncidenteDao;
import daofactory.MySQLDaoFactory;

public class MySql_TipoIncidenteDao extends MySQLDaoFactory implements
		TipoIncidenteDao {

	@Override
	public boolean agregarTipoIncidente(Tipo_IncidenteBean incidenteBean) {
		boolean flag = false;

		String nomtipo = incidenteBean.getNomtipo();

		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "insert into Tipo_Incidente (nomTipo) values ('"
					+ nomtipo + "')";

			int filas = stmt.executeUpdate(sql);

			if (filas == 1) {
				flag = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return flag;
	}

	@Override
	public Vector<Tipo_IncidenteBean> listarTodo() {
		Vector<Tipo_IncidenteBean> lista = new Vector<Tipo_IncidenteBean>();
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from Tipo_Incidente";
			ResultSet rs = stmt.executeQuery(sql);
			Tipo_IncidenteBean tipo = null;
			while (rs.next()) {
				tipo = new Tipo_IncidenteBean();
				tipo.setId_tipo_incidente(rs.getInt("id_tipo_incidente"));
				tipo.setNomtipo(rs.getString("nomtipo"));

				lista.add(tipo);

			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return lista;
	}

	@Override
	public boolean modificarTipoIncidente(Tipo_IncidenteBean incidenteBean) {

		boolean flag = false;

		String nomTipo = incidenteBean.getNomtipo();
		int id_tipo_incidente = incidenteBean.getId_tipo_incidente();

		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "update table Tipo_Incidente set nomtipo = " + nomTipo
					+ " where id_tipo_incidente =" + id_tipo_incidente;
			int filas = stmt.executeUpdate(sql);
			if (filas == 1) {
				flag = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return flag;
	}

}
