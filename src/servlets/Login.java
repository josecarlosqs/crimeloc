package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UsuarioBean;
import dao.interfaces.UsuarioDao;
import daofactory.DaoFactory;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesiones = request.getSession();
		sesiones.removeAttribute("id_usuario");
		sesiones.removeAttribute("nickname");
		sesiones.invalidate();
		response.sendRedirect("index.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {

			UsuarioBean usuario = new UsuarioBean();

			DaoFactory dao = DaoFactory.obtenerFactory(DaoFactory.MYSQL);

			UsuarioDao usuariodao = dao.obtenerUsuarioDao();

			boolean esCorreo = false;
			for (int i = 0; i < request.getParameter("correo").length(); i++) {
				if (request.getParameter("correo").charAt(i) == '@') {
					esCorreo = true;
					break;
				}
			}

			UsuarioBean usuario2;
			usuario.setClave(request.getParameter("clave"));
			if (esCorreo) {
				usuario.setCorreo(request.getParameter("correo"));
				usuario2 = usuariodao.validarDatosCorreo(usuario);

			} else {
				usuario.setNickname(request.getParameter("correo"));
				usuario2 = usuariodao.validarDatosNickName(usuario);
			}

			if (usuario2 == null) {
				request.setAttribute("mensaje", "Datos incorrectos");
				getServletContext().getRequestDispatcher("/resultado.jsp")
						.forward(request, response);

			} else if (usuario2.getEstado()) {

				HttpSession sesiones = request.getSession();

				sesiones.setAttribute("id_usuario", usuario2.getId_usuario());
				sesiones.setAttribute("nickname", usuario2.getNickname());
				sesiones.setAttribute("usuario", usuario2.getNickname());

				getServletContext().getRequestDispatcher("/logueado.jsp")
						.forward(request, response);

			} else {

				request.setAttribute("mensaje", "Usuario se encuentra baneado");
				getServletContext().getRequestDispatcher("/resultado.jsp")
						.forward(request, response);

			}
		} catch (Exception e) {
			System.out.print(e.getMessage());

			request.setAttribute("mensaje", "Ocurrió un error");
			getServletContext().getRequestDispatcher("/resultado.jsp").forward(
					request, response);

		}
	}

}
