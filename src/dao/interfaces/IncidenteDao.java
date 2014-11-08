package dao.interfaces;

import java.util.Vector;
import beans.IncidenteBean;

public interface IncidenteDao {

	public boolean insertarIncidente(IncidenteBean incidente);

	public boolean eliminarIncidente(int id_incidente);

	public Vector<IncidenteBean> listarTodo();

	public Vector<IncidenteBean> listarPorUsuario(int id_usuario);

	public IncidenteBean obtenerIncidente(int id_incidente);

}
