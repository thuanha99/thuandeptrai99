
package entity;

import java.sql.Date;


/**
 *
 * @author thuan
 */
public class HDVay {
    private int ID,goivayID,userID;
    private Date Ngayvay,Han;
    private String Trangthai;
    private float TienVay;
    
    public HDVay(){}

    public HDVay(int goivayID, int userID, Date Ngayvay, Date Han, String Trangthai, float TienVay) {
        this.goivayID = goivayID;
        this.userID = userID;
        this.Ngayvay = Ngayvay;
        this.Han = Han;
        this.Trangthai = Trangthai;
        this.TienVay = TienVay;
    }
    
    

    public HDVay(int ID, int goivayID, int userID, Date Ngayvay, Date Han, String Trangthai, float TienVay) {
        this.ID = ID;
        this.goivayID = goivayID;
        this.userID = userID;
        this.Ngayvay = Ngayvay;
        this.Han = Han;
        this.Trangthai = Trangthai;
        this.TienVay = TienVay;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
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

    public Date getHan() {
        return Han;
    }

    public void setHan(Date Han) {
        this.Han = Han;
    }

    public String getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(String Trangthai) {
        this.Trangthai = Trangthai;
    }

    public float getTienVay() {
        return TienVay;
    }

    public void setTienVay(float TienVay) {
        this.TienVay = TienVay;
    }

    @Override
    public String toString() {
        return "HDVay{" + "ID=" + ID + ", goivayID=" + goivayID + ", userID=" + userID + ", Ngayvay=" + Ngayvay + ", Han=" + Han + ", Trangthai=" + Trangthai + ", TienVay=" + TienVay + '}';
    }


}
