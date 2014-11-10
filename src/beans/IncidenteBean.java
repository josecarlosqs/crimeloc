package beans;
import java.util.Date;

public class IncidenteBean {

	private int id_incidente;
	private int id_usuario;
	private int id_tipo_incidente;
	private String ub_latitud;
	private String ub_longitud;
	private Date timestamp;
	private String descripcion;

	public int getId_incidente() {
		return id_incidente;
	}

	public void setId_incidente(int id_incidente) {
		this.id_incidente = id_incidente;
	}

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public int getId_tipo_incidente() {
		return id_tipo_incidente;
	}

	public void setId_tipo_incidente(int id_tipo_incidente) {
		this.id_tipo_incidente = id_tipo_incidente;
	}

	public String getUb_latitud() {
		return ub_latitud;
	}

	public void setUb_latitud(String ub_latitud) {
		this.ub_latitud = ub_latitud;
	}

	public String getUb_longitud() {
		return ub_longitud;
	}

	public void setUb_longitud(String ub_longitud) {
		this.ub_longitud = ub_longitud;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public IncidenteBean(int id_incidente, int id_usuario,
			int id_tipo_incidente, String ub_latitud, String ub_longitud,
			Date timestamp, String descripcion) {
		super();
		this.id_incidente = id_incidente;
		this.id_usuario = id_usuario;
		this.id_tipo_incidente = id_tipo_incidente;
		this.ub_latitud = ub_latitud;
		this.ub_longitud = ub_longitud;
		this.timestamp = timestamp;
		this.descripcion = descripcion;
	}

	public IncidenteBean() {
		// TODO Auto-generated constructor stub
	}

}
