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
        <script>
            function check(){
                a = document.them.goivay.value;
                b = document.them.userID.value;
                c = document.them.ngayvay.value;
                d = document.them.han.value;
                e = document.them.trangthai.value;
                f = document.them.tienvay.value;
                if(f<=0 || isNaN(f)){
                    alert("Tiền vay phải là số dương");
                    document.them.tienvay.focus();
                    return false;
                }
                return true;              
            }
        </script>
    </head>
    <body>
        <h1>Giao diện thêm mới hợp đồng vay</h1>
        <form name="them" action="add" onsubmit="return check()" method="post">
            <table>
                <tr>
                    <td>Gói Vay</td>
                    <td>
                        <input type="radio" name="goivay" value="1" required>Vay tín chấp IT
                        <input type="radio" name="goivay" value="2">Vay tín chấp sinh viên
                        <input type="radio" name="goivay" value="3">Thế chấp nhà
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
                <td>Kì Hạn</td>
                    <td>
                        <input type="radio" name="kiHan" value="3 thang" required>3 tháng
                        <input type="radio" name="kiHan" value="6 thang">6 tháng                        
                    </td>
                    <tr>    
                <td>Trạng thái</td>
                    <td>
                        <input type="radio" name="trangthai" value="chua duyet" required>Chưa duyệt
                        <input type="radio" name="trangthai" value="da duyet">Đã duyệt                        
                    </td>
                    </tr>
                <tr>
                    <td>Tiền vay</td>
                    <td>
                        <input type="text" name="tienvay" required>
                    </td>
                </tr>    
                    
                    <td><input type="submit" value="Thêm mới"></td>
                </tr>
            </table>
            <button onclick="location.href='/SQADemo/load';">Quay lại</button>
        </form>
    </body>
</html>
