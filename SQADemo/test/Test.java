
import DAO.HDVaydao;
import entity.HDVay;
import java.util.ArrayList;


public class Test {
    public static void main(String[] args) {
        HDVaydao dao= new HDVaydao();
 //get list        
        ArrayList<HDVay> list = dao.getHDVays();
        for(HDVay h : list)
        {
            System.out.println(h);
        }

// getHDbyID
//        HDVay h =  dao.getHDVaybyID("1");
//        System.out.println(h);
    }
}
