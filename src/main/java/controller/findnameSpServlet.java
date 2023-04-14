package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.sanphamDAO;
import model.Danhmuc;
import model.Sanpham;

/**
 * Servlet implementation class cau2
 */
@WebServlet("/findBynameSP")
public class findnameSpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			sanphamDAO dao = new sanphamDAO();
			List<Sanpham> list = dao.findAll(1,4);
			request.setAttribute("sanpham", list);
			
			List<Danhmuc> listCategory = dao.findAlldm();
			request.setAttribute("listCategory", listCategory);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.getRequestDispatcher("/asmwebb/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			sanphamDAO vdao = new sanphamDAO();
			String keyword = request.getParameter("keyword");
			if (keyword.equals("")) {
				request.setAttribute("message", "Vui lòng nhập Keyword!");
			} else {
				request.setAttribute("sanpham", vdao.findVideoFavoriteByKeyword(keyword));
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.getRequestDispatcher("/asmwebb/index.jsp").forward(request, response);

	}
}