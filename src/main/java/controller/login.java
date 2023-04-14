package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import DAO.sanphamDAO;
import model.Danhmuc;

import model.Users;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	// super.doGet(req, resp);

	req.getRequestDispatcher("/asmwebb/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub

	String ID = req.getParameter("id");
	String id = req.getParameter("username");
	String pw = req.getParameter("password");

	try {
	    UserDAO dao = new UserDAO();

	    Users user = dao.findById(id);
	    if (!user.getPassword().equals(pw)) {
		req.setAttribute("message", "Sai mật khẩu!");
	    } else {
		if (user.getAdmin() == false) {
		    req.setAttribute("message", "Đăng nhập thành công user!");
		    req.getSession().setAttribute("user", user.getFullname());
		    // System.out.println(user.getFullname());
		    resp.setHeader("Refresh", "1;url=/asignment2/index");

		} else {
		    req.setAttribute("message", "Đăng nhập thành công admin!");
		    req.getSession().setAttribute("user", user.getFullname());
		    // System.out.println(user.getFullname());
		    resp.setHeader("Refresh", "1;url=/asignment2/user");

		}

	    }
	} catch (Exception e) {
	    req.setAttribute("message", "Sai tên đăng nhập!");
	}
	req.getRequestDispatcher("/asmwebb/login.jsp").forward(req, resp);

    }

}
