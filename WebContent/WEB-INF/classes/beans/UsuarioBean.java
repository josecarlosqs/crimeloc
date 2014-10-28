package beans;

public class UsuarioBean {

	private int id_usuario;
	private String usuario;
	private String clave;
	private String correo;
	private int tipousuario;
	private boolean estado;

	public boolean getEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public int getTipousuario() {
		return tipousuario;
	}

	public void setTipousuario(int tipousuario) {
		this.tipousuario = tipousuario;
	}

	public UsuarioBean(int id_usuario, String usuario, String clave,
			String correo, int tipousuario) {
		super();
		this.id_usuario = id_usuario;
		this.usuario = usuario;
		this.clave = clave;
		this.correo = correo;
		this.tipousuario = tipousuario;
	}

	public UsuarioBean() {
		// TODO Auto-generated constructor stub
	}

}
