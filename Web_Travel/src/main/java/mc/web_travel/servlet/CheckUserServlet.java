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
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/checkUser")
public class CheckUserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username");
        UserDao ud = new UserDaoImpl();
        List<User> list =ud.queryAllUser();
        PrintWriter pw  =resp.getWriter();
        boolean flag = true;
        for (int i = 0;i<list.size();i++){
            if(list.get(i).getUsername().equals(username)){
                flag=false;
                break;
            }
        }
        if(flag==true){
            pw.print(true);
        }else {
            pw.print(false);
        }
    }
}
