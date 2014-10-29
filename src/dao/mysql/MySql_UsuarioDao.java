package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.UsuarioBean;
import dao.interfaces.UsuarioDao;
import daofactory.MySQLDaoFactory;

public class MySql_UsuarioDao extends MySQLDaoFactory implements UsuarioDao {

	public boolean insertarUsuario(UsuarioBean usuario) {
		// Metodo para insertar un nuevo Usuario
		// a la base de datos.
		boolean flag = false;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "insert into usuario (nickname,clave,correo,tipousuario,estado) values ("
					+ "'"
					+ usuario.getNickname()
					+ "',"
					+ "'"
					+ usuario.getClave()
					+ "',"
					+ "'"
					+ usuario.getCorreo()
					+ "',"
					+ "'"
					+ usuario.getTipousuario()
					+ "',"
					+ usuario.getEstado() + "'" + ")";

			int filas = stmt.executeUpdate(sql);
			if (filas == 1) {
				// Se pudo agregar el nuevo Usuario
				flag = true;
			}
		} catch (Exception e) {
			// Ocurrio un error en el proceso
			System.out.print(e.getMessage());
		}
		return flag;
	}

	@Override
	public UsuarioBean validarDatosNickName(UsuarioBean usuario) {
		// Metodo para validar la existencia del Usuario en
		// la base de datos.

		UsuarioBean usuariobean = null;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from usuario " + " where usuario= '"
					+ usuario.getNickname() + "' " + " and clave = '"
					+ usuario.getClave() + "' ";

			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				// Si entro a este bloque significa que el usuario
				// tanto su Usuario y Contraseña son las correctas

				if (rs.getBoolean("estado")) {
					// Si entro a este bloque significa que
					// el usuario no esta baneado
					usuariobean = new UsuarioBean();
					usuariobean.setId_usuario(rs.getInt("id_usuario"));
					usuariobean.setNickname(rs.getString("nickname"));
					usuariobean.setClave(rs.getString("clave"));
					usuariobean.setCorreo(rs.getString("correo"));
					usuariobean.setEstado(rs.getBoolean("estado"));
				} else {
					// Usuario esta baneado
					usuariobean = new UsuarioBean();
					usuariobean.setEstado(false);
				}

			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return usuariobean;
	}

	@Override
	public UsuarioBean obtenerUsuario(int id_usuario) {
		// Obtiene el bean del usuario con tan solo
		// la id.
		UsuarioBean usuariobean = null;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from usuario " + " where id_usuario="
					+ id_usuario;

			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				usuariobean = new UsuarioBean();
				usuariobean.setId_usuario(id_usuario);
				usuariobean.setNickname(rs.getString("nickname"));
				usuariobean.setClave(rs.getString("clave"));
				usuariobean.setCorreo(rs.getString("correo"));
				usuariobean.setEstado(rs.getBoolean("estado"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return usuariobean;
	}

	@Override
	public boolean eliminarUsuario(int id_usuario) {
		// Metodo para eliminar usuario por la id.
		boolean flag = false;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "delete from usuario where id_usuario=" + id_usuario;
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
	public boolean cambiarEstadoUsuario(int id_usuario, boolean estado) {
		// Sirve para cambiar los estados segun el id
		// Y el estado
		// True = Puede entrar
		// False = No puede
		boolean flag = false;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql;
			if (estado) {
				sql = "update usuario set estado = true where id_usuario = "
						+ id_usuario;
			} else {
				sql = "update usuario set estado = false where id_usuario = "
						+ id_usuario;
			}
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
	public UsuarioBean validarDatosCorreo(UsuarioBean usuario) {
		UsuarioBean usuariobean = null;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from usuario " + " where usuario= '"
					+ usuario.getCorreo() + "' " + " and clave = '"
					+ usuario.getClave() + "' ";

			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				// Si entro a este bloque significa que el usuario
				// tanto su Usuario y Contraseña son las correctas

				if (rs.getBoolean("estado")) {
					// Si entro a este bloque significa que
					// el usuario no esta baneado
					usuariobean = new UsuarioBean();
					usuariobean.setId_usuario(rs.getInt("id_usuario"));
					usuariobean.setNickname(rs.getString("nickname"));
					usuariobean.setClave(rs.getString("clave"));
					usuariobean.setCorreo(rs.getString("correo"));
					usuariobean.setEstado(rs.getBoolean("estado"));
				} else {
					// Usuario esta baneado
					usuariobean = new UsuarioBean();
					usuariobean.setEstado(false);
				}

			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

		return usuariobean;
	}

}
