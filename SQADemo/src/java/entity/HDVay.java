
package entity;

import java.sql.Date;


/**
 *
 * @author thuan
 */
public class HDVay {
    private int id,goivayID,userID;
    private Date Ngayvay;
    private String Trangthai,kiHan;
    private double TienVay;
    
    public HDVay(){}

    public HDVay(int goivayID, int userID, Date Ngayvay, String kiHan, String Trangthai, double TienVay) {
        this.goivayID = goivayID;
        this.userID = userID;
        this.Ngayvay = Ngayvay;
        this.kiHan = kiHan;
        this.Trangthai = Trangthai;
        this.TienVay = TienVay;
    }
    
    

    public HDVay(int id, int goivayID, int userID, Date Ngayvay, String kiHan, String Trangthai, double TienVay) {
        this.id = id;
        this.goivayID = goivayID;
        this.userID = userID;
        this.Ngayvay = Ngayvay;
        this.kiHan = kiHan;
        this.Trangthai = Trangthai;
        this.TienVay = TienVay;
    }

    public int getid() {
        return id;
    }

    public void setid(int id) {
        this.id = id;
    }

    public int getGoivayID() {
        return goivayID;
    }

    public void setGoivayID(int goivayID) {
        this.goivayID = goivayID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public Date getNgayvay() {
        return Ngayvay;
    }

    public void setNgayvay(Date Ngayvay) {
        this.Ngayvay = Ngayvay;
    }

    public String getkiHan() {
        return kiHan;
    }

    public void setkiHan(String kiHan) {
        this.kiHan = kiHan;
    }

    public String getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(String Trangthai) {
        this.Trangthai = Trangthai;
    }

    public double getTienVay() {
        return TienVay;
    }

    public void setTienVay(double TienVay) {
        this.TienVay = TienVay;
    }

    @Override
    public String toString() {
        return "HDVay{" + "id=" + id + ", goivayID=" + goivayID + ", userID=" + userID + ", Ngayvay=" + Ngayvay + ", kiHan=" + kiHan + ", Trangthai=" + Trangthai + ", TienVay=" + TienVay + '}';
    }


}
