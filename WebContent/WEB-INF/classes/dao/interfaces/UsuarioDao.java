package dao.interfaces;

import beans.UsuarioBean;

public interface UsuarioDao {
	
	public UsuarioBean validarDatos(UsuarioBean usuario);
	public boolean insertarUsuario(UsuarioBean usuario);
	public UsuarioBean obtenerUsuario(int id_usuario);
	public boolean eliminarUsuario(int id_usuario);
	public boolean cambiarEstadoUsuario(int id_usuario,boolean estado);
	
}
