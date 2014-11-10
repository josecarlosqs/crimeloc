package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.UsuarioBean;
import dao.interfaces.UsuarioDao;
import daofactory.DaoFactory;
import org.apache.commons.codec.digest.DigestUtils; 

/**
 * Servlet implementation class RegistrarCliente
 */
@WebServlet("/registro")
public class RegistrarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrarUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {

			String nickname = request.getParameter("txtnickname");
			String clave = request.getParameter("txtclave1");
			String clave2 = request.getParameter("txtclave2");
			String correo = request.getParameter("txtcorreo");
			int tipousuario = 1;
			boolean estado = true;

			if (clave.equals(clave2)) {

				UsuarioBean a = new UsuarioBean();
				a.setNickname(nickname);
				//System.out.print();
				a.setClave(DigestUtils.md5Hex(clave));
				System.out.print(DigestUtils.md5Hex(clave));
				//a.setClave(clave);
				a.setCorreo(correo);
				a.setTipousuario(tipousuario);
				a.setEstado(estado);
				DaoFactory mysqldao = DaoFactory
						.obtenerFactory(DaoFactory.MYSQL);
				UsuarioDao usuarioDao = mysqldao.obtenerUsuarioDao();
				if (usuarioDao.validarDatosCorreo(a) == null) {
					System.out.println("valido correo");
					if (usuarioDao.validarDatosNickName(a) == null) {
						System.out.println("valido nickname");
						boolean flag = usuarioDao.insertarUsuario(a);
						if (flag) {
							request.setAttribute("mensaje", "Registrado...");
						} else {
							request.setAttribute("mensaje", "Ocurrió un error");
						}
						System.out.print("redirecciona a index.jsp");
						getServletContext().getRequestDispatcher(
								"/logueado.jsp").forward(request, response);
					} else {
						System.out
								.print("Nickname ya existe, intente con otro");
					}

				} else {
					System.out
							.print("Correo ya existe registrado en la base de datos intente con otro");
				}

			} else {
				// Si la contraseña ingresada es incorrecta con la segunda
				request.setAttribute("mensaje", "Contraseña incorrecta");
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("Error en el metodo doPost de RegistrarUsuario");
		}
	}

}
