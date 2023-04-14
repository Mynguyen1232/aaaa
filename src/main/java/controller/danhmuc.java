package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.microsoft.sqlserver.jdbc.StringUtils;

import DAO.sanphamDAO;
import model.Danhmuc;
import model.Sanpham;

@WebServlet("/danhmuc_servlet")
public class danhmuc extends HttpServlet {
    private static final long serialVersionUID = 1L;
    sanphamDAO prDAO = new sanphamDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	List<Danhmuc> listCategory = prDAO.findAlldm();
	request.setAttribute("listCategory", listCategory);

	String maDM = request.getParameter("maDM");
	String maSP = request.getParameter("maSP");

	String b = request.getParameter("filter");
	System.out.println(b);

	if (!StringUtils.isEmpty(maSP)) {
	    doGetSanPham(request, response, maSP);
	} else if (!StringUtils.isEmpty(maDM)) {
	    doGetDanhMuc(request, response, maDM);
	}
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setCharacterEncoding("utf-8");
	String b = req.getParameter("filter");
	System.out.println(b);
    }

    protected void doGetDanhMuc(HttpServletRequest req, HttpServletResponse resp, String maDM)
	    throws ServletException, IOException {
	List<Sanpham> listProduct = prDAO.findAllByMadm(maDM);
	req.setAttribute("listProduct", listProduct);

	Danhmuc category = prDAO.findByMaDM(maDM);
	req.setAttribute("category", category);

	req.getRequestDispatcher("/asmwebb/category.jsp").forward(req, resp);
    }

    protected void doGetSanPham(HttpServletRequest req, HttpServletResponse resp, String maSP)
	    throws ServletException, IOException {
	sanphamDAO SPdao = new sanphamDAO();
	String id = req.getParameter("maSP");
	List<Sanpham> sp = SPdao.findSanPhamID(id);
	req.setAttribute("sanpham", sp);
	req.getRequestDispatcher("/asmwebb/resultproduc.jsp").forward(req, resp);
    }

}
