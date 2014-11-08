package beans;

public class Tipo_IncidenteBean {
	
	private int id_tipo_incidente;
	private String nomtipo;
	public int getId_tipo_incidente() {
		return id_tipo_incidente;
	}
	public void setId_tipo_incidente(int id_tipo_incidente) {
		this.id_tipo_incidente = id_tipo_incidente;
	}
	public String getNomtipo() {
		return nomtipo;
	}
	public void setNomtipo(String nomtipo) {
		this.nomtipo = nomtipo;
	}
	public Tipo_IncidenteBean(int id_tipo_incidente, String nomtipo) {
		super();
		this.id_tipo_incidente = id_tipo_incidente;
		this.nomtipo = nomtipo;
	}
	public Tipo_IncidenteBean() {
		// TODO Auto-generated constructor stub
	}
	
}
