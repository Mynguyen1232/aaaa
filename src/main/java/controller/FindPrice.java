package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.sanphamDAO;

/**
 * Servlet implementation class FindPrice
 */
@WebServlet("/FindPricee")
public class FindPrice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			sanphamDAO vdao = new sanphamDAO();
			String min = request.getParameter("minPrice");
			String max = request.getParameter("maxPrice");
			if (min.equals("") || max.equals("")) {
				request.setAttribute("message", " !");
			} else {
				request.setAttribute("sanpham", vdao.findPrice(min, max));
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.getRequestDispatcher("/asmwebb/index.jsp").forward(request, response);
	}

}
