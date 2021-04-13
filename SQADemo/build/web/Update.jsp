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
    </head>
    <body>
        <form action="update" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <input value="${st.id}" type="text" name="ID" readonly>
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
                    <td></td>
                    <label  for="han">Hạn </label>
                    <input value="${st.han}" type="date" id="han" name="han">                    
                </tr>
                <td>Trạng thái</td>
                    <td>
                        <input type="radio" name="trangthai" value="chua duyet" ${st.trangthai == "chua duyet"?"checked":""}>Chưa duyệt
                        <input type="radio" name="trangthai" value="da duyet" ${st.trangthai == "da duyet"?"checked":""}>Đã duyệt                        
                    </td>
                <tr>
                <tr>
                    <td>Tiền vay</td>
                    <td>
                        <input value="${st.tienVay}" type="text" name="tienvay">
                    </td>
                </tr>    
                    <td></td>
                    <td><button type="submit">Cập nhật</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
