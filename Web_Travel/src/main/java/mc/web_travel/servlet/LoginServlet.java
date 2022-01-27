package mc.web_travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mc.web_travel.dao.UserDao;
import mc.web_travel.dao.impl.UserDaoImpl;
import mc.web_travel.entity.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 修改接收请求和发送请求的编码格式
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		//获取servlet中的验证码
		String Cpacha = (String)request.getSession().getAttribute("Cpacha");
		//获取用户输入的验证码
		String inputCpacha = request.getParameter("cpacha");
		
  		if(Cpacha == null || inputCpacha == null){
  			Cpacha = "";
  			inputCpacha = "";
  		}
  		
  		//判断验证码是否正确
		if(!Cpacha.toUpperCase().equals(inputCpacha.toString().toUpperCase())){
			request.setAttribute("msg", "验证码错误！登录失败！");
			request.getRequestDispatcher("login_error.jsp").forward(request, response);
		}else {
			try {
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				UserDao ud = new UserDaoImpl();
				User user = ud.login(username,password);
				if(user!=null){
					request.getSession().setAttribute("user",user);
					response.sendRedirect("index.jsp");
				}else{
					request.setAttribute("msg","用户名或密码错误！");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
	
}
