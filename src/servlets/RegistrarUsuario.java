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
		System.out.print("oliboli");
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
				a.setClave(clave);
				a.setCorreo(correo);
				a.setTipousuario(tipousuario);
				a.setEstado(estado);

				DaoFactory mysqldao = DaoFactory
						.obtenerFactory(DaoFactory.MYSQL);

				UsuarioDao usuarioDao = mysqldao.obtenerUsuarioDao();
				boolean flag = usuarioDao.insertarUsuario(a);

				if (flag) {
					request.setAttribute("mensaje", "Registrado...");
				} else {
					request.setAttribute("mensaje", "Ocurrió un error");
				}

				getServletContext().getRequestDispatcher("/index.jsp").forward(
						request, response);

			} else {
				request.setAttribute("mensaje", "Contraseña icnorreecta");
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
	}

}
