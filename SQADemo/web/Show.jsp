<%-- 
    Document   : Show
    Created on : Apr 12, 2021, 11:13:31 AM
    Author     : thuan
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xem hợp đồng vay</title>
    </head>
    <body>
            <table border="1px solid black">
                <tr>
                    <th>ID</th>
                    <th>goivayID</th>
                    <th>userID</th>
                    <th>Ngayvay</th>
                    <th>Han</th>
                    <th>Trangthai</th>
                    <th>TienVay</th>
                </tr>
            <c:forEach items="${listH}" var="x">
                <tr>
                    <td>${x.id}</td>
                    <td>${x.goivayID}</td>
                    <td>${x.userID}</td>
                    <td>${x.ngayvay}</td>
                    <td>${x.han}</td>
                    <td>${x.trangthai}</td>
                    <td>${x.tienVay}</td>
                    <td>
                        <a href="update?sid=${x.id}">Update</a>
                        <a href="#" onclick="showMess(${x.id})">Delete</a>
<!--                        <a href="delete?sid=${x.id}">Delete</a>-->
                    </td>
                </tr>
            </c:forEach>

        </table>
            <a href="Add.jsp">Thêm mới hợp đồng vay</a>    
    </body>
    <script>
        function showMess(id){
            var option = confirm('dit me may muon xoa a ');
            if(option === true){
                window.location.href = 'delete?sid=' + id;
            }
        }
            
    </script>
</html>
