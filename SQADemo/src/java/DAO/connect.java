
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author thuan
 */
public class connect {
    public static Connection con;
    
    public connect(){
        if(con==null) {
            String dburl = "jdbc:mysql://localhost:3306/bank?autoReconnnect=true&allowPublicKeyRetrieval=true&useSSL=false";
            String dbClass = "com.mysql.cj.jdbc.Driver";
            try{
                Class.forName(dbClass);
                con = DriverManager.getConnection(dburl, "root", "1999");
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
    public static void main(String[] args) {
        connect c = new connect();
        System.out.println(con);
    }
}
