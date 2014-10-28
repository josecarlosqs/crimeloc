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
@WebServlet("/RegistrarCliente")
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

			String usuario = request.getParameter("usuario");
			String clave = request.getParameter("clave");
			String correo = request.getParameter("correo");
			int tipousuario = 1;
			boolean estado = true;

			UsuarioBean a = new UsuarioBean();
			a.setUsuario(usuario);
			a.setClave(clave);
			a.setCorreo(correo);
			a.setTipousuario(tipousuario);
			a.setEstado(estado);

			DaoFactory mysqldao = DaoFactory.obtenerFactory(DaoFactory.MYSQL);

			UsuarioDao usuarioDao = mysqldao.obtenerUsuarioDao();
			boolean flag = usuarioDao.insertarUsuario(a);

			if (flag) {
				request.setAttribute("mensaje", "Registrado...");
			} else {
				request.setAttribute("mensaje", "Ocurrió un error");
			}

			getServletContext().getRequestDispatcher("/index.jsp").forward(
					request, response);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
	}

}
