package mc.web_travel.servlet;

import mc.web_travel.dao.UserDao;
import mc.web_travel.dao.impl.UserDaoImpl;
import mc.web_travel.entity.User;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/RegistServlet","/RegistServletDo"})
public class RegistServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 处理注册页面的请求
		
		// 修改接收请求和发送请求的编码格式
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String path = request.getServletPath(); // 找与path匹配的路径
		if("/RegistServlet".equals(path)){
			request.getSession().setAttribute("username",request.getParameter("username"));
			request.getSession().setAttribute("password",request.getParameter("password"));
			request.getRequestDispatcher("regist1.jsp").forward(request, response);
		}else if("/RegistServletDo".equals(path)){
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
				request.setAttribute("msg", "验证码错误！注册失败！");
				request.getRequestDispatcher("regist_error.jsp").forward(request, response);
			}else {
				try {
//					从表单接收数据
					String username = (String) request.getSession().getAttribute("username");
					String password = (String) request.getSession().getAttribute("password");
					String sex = request.getParameter("sex");
					String age = request.getParameter("age");
					String address = request.getParameter("province") + "," + request.getParameter("city");

					UserDao ud = new UserDaoImpl();
					User user = ud.login(username,password);
					if(user != null){
						request.setAttribute("msg","该用户名已存在！");
						request.getRequestDispatcher("regist_error.jsp").forward(request, response);
					}else{
//						将接收的数据存放到数据库
						User userNew = new User();
						userNew.setUsername(username);
						userNew.setPassword(password);
						userNew.setSex(Integer.parseInt(sex));
						userNew.setAge(Integer.parseInt(age));
						userNew.setAddress(address);
						userNew.setCreateTime(new Date());
						int num = ud.addUser(userNew); // 成功是1 ，失败 0
						if (num == 1){ // 注册成功
							response.sendRedirect("login.jsp"); //页面跳转：重定向
						}else { //失败
							request.setAttribute("msg","由于当前页面访问人数过多，请稍后再试！");
							request.getRequestDispatcher("regist_error.jsp").forward(request, response);
						}
					}
				}catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
