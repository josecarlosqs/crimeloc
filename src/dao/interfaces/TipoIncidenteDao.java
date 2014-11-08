package dao.interfaces;

import java.util.Vector;
import beans.Tipo_IncidenteBean;

public interface TipoIncidenteDao {

	public boolean agregarTipoIncidente(Tipo_IncidenteBean incidenteBean);

	public Vector<Tipo_IncidenteBean> listarTodo();

	public boolean modificarTipoIncidente(Tipo_IncidenteBean incidenteBean);
}
