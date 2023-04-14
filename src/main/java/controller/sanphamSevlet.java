package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.sanphamDAO;
import model.Danhmuc;
import model.Sanpham;
import model.User;

/**
 * Servlet implementation class index
 */
@WebServlet("/resultproduc")
public class sanphamSevlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {

	    sanphamDAO prDAO = new sanphamDAO();
	    String id = req.getParameter("maSP");
	    List<Sanpham> sp = prDAO.findSanPhamID(id);
	    req.setAttribute("sanpham", sp);

	    List<Danhmuc> listCategory = prDAO.findAlldm();
	    req.setAttribute("listCategory", listCategory);

	} catch (Exception e) {
	    e.printStackTrace();
	    req.setAttribute("error", "Lỗi: " + e.getMessage());
	}
	req.getRequestDispatcher("/asmwebb/resultproduc.jsp").forward(req, resp);
    }

}
