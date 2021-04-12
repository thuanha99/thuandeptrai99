<%-- 
    Document   : Add
    Created on : Apr 12, 2021, 11:17:52 AM
    Author     : thuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Hợp Đồng Vay</title>
    </head>
    <body>
        <form action="add" method="post">
            <table>
                
                <tr>
                    <td>Gói Vay</td>
                    <td>
                        <input type="radio" name="goivay" value="1">Vay tin chap IT
                        <input type="radio" name="goivay" value="2">Vay tin chap sinh vien
                        <input type="radio" name="goivay" value="3">The chap nha
                    </td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td>
                        <input type="text" name="userID" required>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <label for="ngayvay">Ngày Vay: </label>
                    <input type="date" id="ngayvay" name="ngayvay" required>
                    
                </tr>
                <tr>
                    <td></td>
                    <label for="han">Hạn </label>
                    <input type="date" id="han" name="han" required>                    
                </tr>
                <td>Trạng thái</td>
                    <td>
                        <input type="radio" name="trangthai" value="chua duyet">Chưa duyệt
                        <input type="radio" name="trangthai" value="da duyet">Đã duyệt                        
                    </td>
                <tr>
                <tr>
                    <td>Tiền vay</td>
                    <td>
                        <input type="text" name="tienvay" required>
                    </td>
                </tr>    
                    <td></td>
                    <td><button type="submit">Thêm mới</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
