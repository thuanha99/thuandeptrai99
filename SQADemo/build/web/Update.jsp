<%-- 
    Document   : Update
    Created on : Apr 13, 2021, 12:31:03 AM
    Author     : thuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa hợp đồng vay</title>
        <script>
            function check(){
                a = document.capnhat.goivay.value;
                b = document.capnhat.userID.value;
                c = document.capnhat.ngayvay.value;
                d = document.capnhat.han.value;
                e = document.capnhat.trangthai.value;
                f = document.capnhat.tienvay.value;
                if(f<=0 || isNaN(f)){
                    alert("Tiền vay phải là số dương");
                    document.capnhat.tienvay.focus();
                    return false;
                }
                return true;              
            }
        </script>
    </head>
    <body>
        <h1>Giao diện sửa hợp đồng</h1>
        <form name="capnhat" action="update" onsubmit="return check()" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <input value="${st.id}" type="text" name="ID" style="background-color: grey;" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Gói Vay</td>
                    <td>
                        <input type="radio" name="goivay" value="1" ${st.goivayID == 1?"checked":""}>Vay tin chap IT
                        <input type="radio" name="goivay" value="2" ${st.goivayID == 2?"checked":""}>Vay tin chap sinh vien
                        <input type="radio" name="goivay" value="3" ${st.goivayID == 3?"checked":""}>The chap nha
                    </td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td>
                        <input value="${st.userID}" type="text" name="userID">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <label for="ngayvay">Ngày Vay: </label>
                    <input value="${st.ngayvay}" type="date" id="ngayvay" name="ngayvay">
                    
                </tr>
                <tr>
                <td>Kì Hạn</td>
                    <td>
                        <input type="radio" name="kiHan" value="3 thang" ${st.kiHan == "3 thang"?"checked":""}>3 tháng
                        <input type="radio" name="kiHan" value="6 thang" ${st.kiHan == "6 thang"?"checked":""}>6 tháng                      
                    </td>
                </tr>
                <tr>
                <td>Trạng thái</td>
                    <td>
                        <input type="radio" name="trangthai" value="chua duyet" ${st.trangthai == "chua duyet"?"checked":""}>Chưa duyệt
                        <input type="radio" name="trangthai" value="da duyet" ${st.trangthai == "da duyet"?"checked":""}>Đã duyệt                        
                    </td>
                </tr>
                <tr>
                    <td>Tiền vay</td>
                    <td>
                        <input value="${st.tienVay}" type="text" name="tienvay">
                    </td>
                </tr>    
                    
                    <td><input type="submit" value="Cập nhật"></td>
                </tr>
            </table>
                
        </form>
            <button onclick="location.href='/SQADemo/load';">Quay lại</button>
    </body>
</html>
