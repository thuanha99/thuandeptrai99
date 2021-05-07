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
        <h1>Giao diện xem hợp đồng vay</h1>
            <table border="1px solid black">
                <tr>
                    <th>ID</th>
                    <th>Gói Vay ID</th>
                    <th>user ID</th>
                    <th>Ngày vay</th>
                    <th>Kì Hạn</th>
                    <th>Trạng thái</th>
                    <th>Tiền Vay</th>
                </tr>
            <c:forEach items="${listH}" var="x">
                <tr>
                    <td>${x.id}</td>
                    <td>${x.goivayID}</td>
                    <td>${x.userID}</td>
                    <td>${x.ngayvay}</td>
                    <td>${x.kiHan}</td>
                    <td>${x.trangthai}</td>
                    <td>${x.tienVay}</td>
                    <td>
                        
                        <button onclick="location.href='update?sid=${x.id}';">Update</button>                        
                        <button onclick="showMess(${x.id})">Delete</button>
                        
                    </td>
                </tr>
            </c:forEach>

        </table>
            
            <button onclick="location.href='Add.jsp';">Thêm mới hợp đồng vay</button>
    </body>
    <script>

        
        function showMess(id){
            var option = confirm('bạn chắc chắn muốn xóa ?');
            if(option === true){
                window.location.href = 'delete?sid=' + id;
            }
        }
            
    </script>
</html>
