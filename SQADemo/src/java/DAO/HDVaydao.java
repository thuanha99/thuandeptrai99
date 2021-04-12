/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import entity.HDVay;

/**
 *
 * @author thuan
 */
public class HDVaydao extends connect{
    public ArrayList<HDVay>getHDVays(){
        ArrayList<HDVay> list =null;
        String sql = "select*from hopdongvay";
        CallableStatement cs ;
        try {
            cs=con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            
            while(rs.next()){
                if(list == null) list = new ArrayList<>();
                list.add(new HDVay(rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getInt(3), 
                        rs.getDate(4), 
                        rs.getDate(5), 
                        rs.getString(6),
                        rs.getFloat(7)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            list =null;
        }
        return list;
    }
    
    public int them(HDVay hdvay){
      int record = 0;
      int index = 0;
      String sql="INSERT INTO `bank`.`hopdongvay`(`goivayID`,`userID`,`Ngayvay`,`Han`,`Trangthai`,`TienVay`)VALUES(?,?,?,?,?,?);";
        try {
            PreparedStatement ps = con.prepareStatement(sql);            
            ps.setInt(++index, hdvay.getGoivayID());
            ps.setInt(++index, hdvay.getUserID());
            ps.setDate(++index, hdvay.getNgayvay());
            ps.setDate(++index, hdvay.getHan());
            ps.setString(++index, hdvay.getTrangthai());
            ps.setFloat(++index, hdvay.getTienVay());
            record = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            record = 0;
        }
        return record;
    }
    
    public HDVay getHDVaybyID(String ID){
        
        String sql = "SELECT * FROM bank.hopdongvay where ID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);  
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return new HDVay(rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getInt(3), 
                        rs.getDate(4), 
                        rs.getDate(5), 
                        rs.getString(6), 
                        rs.getFloat(7));
                
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
//    public int sua(HDVay h){
//    int record = 0;
//    int index = 0;
//    String sql="UPDATE `bank`.`hopdongvay`SET `goivayID` = ?,`userID` = ?,`Ngayvay` = ?,`Han` = ?,`Trangthai` = ?,`TienVay` = ?WHERE `ID` = ?;";
//        try {
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setInt(++index, h.getGoivayID());
//            ps.setInt(++index, h.getUserID());
//            ps.setDate(++index, h.getNgayvay());
//            ps.setDate(++index, h.getHan());
//            ps.setString(++index, h.getTrangthai());
//            ps.setInt(++index, h.getID());
//            record = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//            record = 0;
//        }
//        return record;
//    }
    
    public void suaHD(String ID, String userID, String goivayID, String Ngayvay, String Han, String Trangthai, String TienVay){
        String sql = "UPDATE `bank`.`hopdongvay`SET `goivayID` = ?,`userID` = ?,`Ngayvay` = ?,`Han` = ?,`Trangthai` = ?,`TienVay` = ?WHERE `ID` = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, goivayID);
            ps.setString(2, userID);
            ps.setString(3, Ngayvay);
            ps.setString(4, Han);
            ps.setString(5, Trangthai);
            ps.setString(6, TienVay);
            ps.setString(7, ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void xoa(String id){
        String sql="DELETE FROM `bank`.`hopdongvay`WHERE `ID` = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();            
        }        
    }   

    public void them(int hgoivayid, int huserid, Date hngayvay, Date hhan, String htrangthai, float htienvay) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
