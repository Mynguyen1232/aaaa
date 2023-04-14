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
 * Servlet implementation class phantrangSP
 * 
 * @param <Integern>
 */
@WebServlet("/phantrangSP")
public class phantrangSP<Integern> extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	try {
	    sanphamDAO dao = new sanphamDAO();
	    List<Sanpham> list = dao.findAll();
	    req.setAttribute("sanpham", list);
//			List<Danhmuc> listCategory = dao.findAlldm();
//			req.setAttribute("listCategory", listCategory);

	} catch (Exception e) {
	    e.printStackTrace();
	    req.setAttribute("error", "Lỗi: " + e.getMessage());
	}
	req.getRequestDispatcher("/asmwebb/phantrang.jsp").forward(req, resp);

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
