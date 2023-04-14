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

@WebServlet("/index")
public class index extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
	    sanphamDAO dao = new sanphamDAO();
	    List<Sanpham> list = dao.findAll(1, 4);
	    req.setAttribute("sanpham", list);
	    List<Danhmuc> listCategory = dao.findAlldm();
	    req.setAttribute("listCategory", listCategory);
	} catch (Exception e) {	
	    e.printStackTrace();
	    req.setAttribute("error", "Lỗi: " + e.getMessage());
	}
	req.getRequestDispatcher("/asmwebb/index.jsp").forward(req, resp);

    }



}
