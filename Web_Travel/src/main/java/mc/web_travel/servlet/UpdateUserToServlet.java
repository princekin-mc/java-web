package mc.web_travel.servlet;

import mc.web_travel.dao.UserDao;
import mc.web_travel.dao.impl.UserDaoImpl;
import mc.web_travel.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = {"/UpdateUserToServlet","/UpdateUserDoServlet"})
public class UpdateUserToServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        UserDao ud = new UserDaoImpl();
        String path = request.getServletPath(); // 找与path匹配的路径
        if("/UpdateUserToServlet".equals(path)){
            String username = request.getParameter("username");
            User user = ud.queryUsername(username);
            request.setAttribute("user",user);
            request.getRequestDispatcher("userUpdate.jsp").forward(request,response);
        }else if("/UpdateUserDoServlet".equals(path)){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String sex = request.getParameter("sex");
            String age = request.getParameter("age");
            String address = request.getParameter("province") + "," + request.getParameter("city");
            String userId = request.getParameter("userId");

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setSex(Integer.parseInt(sex));
            user.setAge(Integer.parseInt(age));
            user.setAddress(address);
            user.setCreateTime(new Date());
            user.setId(Long.parseLong(userId));
            ud.uppdateUser(user);
            response.sendRedirect("index.jsp");
        }

    }
}
