<%@ page import="mc.web_travel.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: MC234
  Date: 2021/5/27
  Time: 0:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User)request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <title>修改用户信息</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.6.0.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/province_city.js"></script>
    <script type="text/javascript">
        // 初始化数据。为省市级连做准备。
        $(document).ready(function(){
            init();
        });
    </script>
</head>
<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
            </div>
            <%--  用户信息表单  --%>
            <div style="margin-left: 40px">
                <form class="form-horizontal" role="form" action="UpdateUserDoServlet" method="post">

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">用&nbsp;&nbsp;户&nbsp;&nbsp;ID</label>
                        <div class="col-sm-10">
                            <input type="text" name="userId" value=<%=user.getId()%> readonly class="form-control" id="firstname" style="width: 300px">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">用&nbsp;&nbsp;户&nbsp;&nbsp;名</label>
                        <div class="col-sm-10">
                            <input type="text" name="username" value=<%=user.getUsername()%> class="form-control" id="firstname" placeholder="请输入用户名" style="width: 300px">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">用户密码</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" value=<%=user.getPassword()%> class="form-control" id="firstname" placeholder="请输入密码" style="width: 300px">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">用户性别</label>
                        <div class="col-sm-10" style="width: 400px ">
                            <%
                                if (user.getSex() == 0){
                            %>
                            男&nbsp;&nbsp;<input type="radio" name="sex" value="0" checked style="margin-right: 25px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;<input type="radio" name="sex" value="1">
                            <%
                                }else {
                            %>
                            男&nbsp;&nbsp;<input type="radio" name="sex" value="0" style="margin-right: 35px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;<input type="radio" name="sex" value="1" checked>
                            <%
                                }
                            %>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">用户年龄</label>
                        <div class="col-sm-10">
                            <input type="text" name="age" value=<%=user.getAge()%> class="form-control" id="firstname" placeholder="请输入年龄" style="width: 300px">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">用户地址</label>
                        <div class="col-sm-10">
                            <select style="width:142px; height:34px; border:1px solid #ccc; border-radius: 4px; padding-left:20px;" name="province" id="param_province" onchange="provincechange(this.selectedIndex)"><option>请选择省份</option></select>
                            <select style="width:142px; height:34px; border:1px solid #ccc; border-radius: 4px; padding-left:20px; margin-left:13px;" name="city" id="param_city"><option>请选择城市</option></select>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            <a href="index.jsp">取消</a>
                        </button>
                        <button type="submit" class="btn btn-primary">保存</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-dialog -->
    </div>
</div><!-- /.modal -->
    <script>
        $(function () { $('#myModal').modal({
            keyboard: true
        })});
    </script>
</body>
</html>