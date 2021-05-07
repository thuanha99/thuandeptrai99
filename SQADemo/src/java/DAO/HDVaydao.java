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
        String sql = "select * from hopdongvay";
        CallableStatement cs ;
        try {
            cs=con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                if(list == null) list = new ArrayList<>();
                list.add(new HDVay(rs.getInt(rs.findColumn("id")), 
                        rs.getInt(rs.findColumn("goivayID")), 
                        rs.getInt(rs.findColumn("userID")), 
                        rs.getDate(rs.findColumn("Ngayvay")), 
                        rs.getString(rs.findColumn("kiHan")), 
                        rs.getString(rs.findColumn("Trangthai")),
                        rs.getDouble(rs.findColumn("TienVay"))));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            list =null;
        }
        return list;
    }
    

    
    public HDVay getHDVaybyID(String id){
        
        String sql = "SELECT * FROM bank.hopdongvay where ID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);  
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return new HDVay(rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getInt(3), 
                        rs.getDate(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getDouble(7));
                
            }
        } catch (SQLException e) {
        }
        return null;
    }
    

    
    public void suaHD(int id, int hgoivayid, int huserid, Date hngayvay, String hkihan, String htrangthai, double htienvay){
        String sql = "UPDATE `bank`.`hopdongvay`SET `goivayID` = ?,`userID` = ?,`Ngayvay` = ?,`kiHan` = ?,`Trangthai` = ?,`TienVay` = ? WHERE `ID` = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, hgoivayid);
            ps.setInt(2, huserid);
            ps.setDate(3, hngayvay);
            ps.setString(4, hkihan);
            ps.setString(5, htrangthai);
            ps.setDouble(6, htienvay);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void xoa(String id){
        String sql = "DELETE FROM `bank`.`hopdongvay`WHERE `ID` = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();            
        }        
    }   

    public void them(int hgoivayid, int huserid, Date hngayvay, String hkihan, String htrangthai, double htienvay) {
        String sql = "INSERT INTO `bank`.`hopdongvay`(`goivayID`,`userID`,`Ngayvay`,`kiHan`,`Trangthai`,`TienVay`)VALUES(?,?,?,?,?,?);";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, hgoivayid);
            ps.setInt(2, huserid);
            ps.setDate(3, hngayvay);
            ps.setString(4, hkihan);
            ps.setString(5, htrangthai);
            ps.setDouble(6, htienvay);
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
