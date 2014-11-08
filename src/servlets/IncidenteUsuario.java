package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.IncidenteBean;
import dao.interfaces.IncidenteDao;
import daofactory.DaoFactory;

/**
 * Servlet implementation class IncidenteUsuario
 */
@WebServlet("/incidenteusuario")
public class IncidenteUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IncidenteUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession sesiones = request.getSession();
			int i = (Integer) sesiones.getAttribute("id_usuario");
			int id = Integer.parseInt(request.getParameter("id"));
			// obtener la incidencia por usuario

			DaoFactory mysqldao = DaoFactory.obtenerFactory(DaoFactory.MYSQL);
			IncidenteDao cd = mysqldao.obtenerIncidenteDao();
			IncidenteBean cb = cd.obtenerIncidente(id);
			if (cb.getId_usuario() == i) {
				request.setAttribute("incidente", cb);
				getServletContext().getRequestDispatcher("/incidente_mapa.jsp")
						.forward(request, response);
			} else {
				response.sendRedirect(getServletContext().getContextPath()
						+ "/misdenuncias.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
