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
 * Servlet implementation class Usuario
 */
@WebServlet("/Usuario")
public class Usuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Usuario() {
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
		sesiones.removeAttribute("usuario");
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
			usuario.setNickname(request.getParameter("nickname"));
			usuario.setClave(request.getParameter("clave"));

			DaoFactory dao = DaoFactory.obtenerFactory(DaoFactory.MYSQL);

			UsuarioDao usuariodao = dao.obtenerUsuarioDao();
			UsuarioBean usuario2 = usuariodao.validarDatosNickName(usuario);

			if (usuario2 == null) {
				request.setAttribute("mensaje", "Datos incorrectos");
				getServletContext().getRequestDispatcher("/index.jsp").forward(
						request, response);
			} else if (usuario2.getEstado()) {

				HttpSession sesiones = request.getSession();

				sesiones.setAttribute("id_usuario", usuario2.getId_usuario());
				sesiones.setAttribute("usuario", usuario.getNickname());

				getServletContext().getRequestDispatcher("/inicio.jsp")
						.forward(request, response);
			} else {

				request.setAttribute("mensaje", "Usuario se encuentra baneado");
				getServletContext().getRequestDispatcher("/index.jsp").forward(
						request, response);

			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}

}
