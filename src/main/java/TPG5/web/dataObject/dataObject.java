package TPG5.web.dataObject;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;
import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import TPG5.web.scrape.dbConnect;
import TPG5.web.scrape.scrapedataObject;
import TPG5.web.model.mRegistration;

public class dataObject {
    dbConnect dbc = new dbConnect("tpg5");
    mRegistration mR = new mRegistration();
    Connection conn = dbc.connection_string();
    Statement stmt = null;
    ResultSet rs;
    HttpServletResponse resp;
    HttpServletRequest  req;

    String firstN = null;
    String lastN = null;
    String userAccessLvl = null;
    
    public mRegistration member_register(String fname, String mname, String lname, String usrname, 
    String password, String rootpass, String email, String useraccess, String oboSq1, String oboSql2,
    String txtans1, String txtans2) {

        firstN = mR.getFname();
        lastN = mR.getlname();
        userAccessLvl = mR.getuseraccess();
        String objoboSql = mR.getoboSq1();
        String objoboSql2 = mR.getoboSql2();
        String objTxtans1 = mR.gettxtans1(); 
        String objTxtans2 = mR.gettxtans2(); 

        int reference_id = ThreadLocalRandom.current().nextInt();
        LocalDate current_date = new LocalDate.now();
        String strcurrent_date = current_date.toString();

        LocalDate enddt = current_date.plusDays(90);
        
        LocalDate neverdt = current_date.plusDays(900000); // admin
        String stneverdt = enddt.toString();

        String strenddt = enddt.toString(); //other users
        
        String [] acc_status = new String[] {"Ad_active","active","inactive","disable","Deleted"};

        scrapedataObject attack = new scrapedataObject();
        attack.get_web_data();
        int result = 0;

        int n_of_u_found = 0;

        boolean usrExist = false;
        String qry_user = "SELECT * FROM users";
        try
        {
            String hash_val_pwd = conn.getSHA_pwd(pwd);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(qry_user);
            while(rs.next())
            {
                n_of_u_found++;

                if(rs.getString("u_name").equals(uname))
                {
                    usrExist = true;
                    RequestDispather rd = new RequestDispather();
                    rd.forward(request, response);
                    break;
                }
            }
            if(n_of_u_found==0) {
                if(pwd.equals(rpwd)){
                    String insert_db = "INSERT INTO users (f_name, m_name, u_name, u_pwd, u_email, u_access, u_sq1, u_ans1, u_sq2, u_ans2, u_ref_id, u_reg_date, u_exp_data, acct_status)";
                    PreparedStatement pstmt = conn.prepareStatement(insert_db);
                    pstmt.setString(1, "Administrator");
                    pstmt.setString(2, "A");
                    pstmt.setString(3, "Account");
                    pstmt.setString(4, "admin");
                    pstmt.setString(5, hash);
                    pstmt.setString(6, "");
                    pstmt.setString(7, "");
                    pstmt.setString(8, "");
                }
            }

        }

        return m;
    }
    
    public ArrayList member_login(String username, String password) {
        ArrayList userProfile = new ArrayList();
        try {
            String hash_password = dbc.getSHA_pwd(password);
            stmt = conn.createStatement();
            String selectSQL = "SELECT * FROM users";
            rs = stmt.executeQuery(selectSQL);

            while (rs.next())
            {
                String usern = rs.getString("u_name").toString();
                String usere = rs.getString("u_email").toString();
                String userp = rs.getString("u_pwd").toString();
            }
        }
    }
}
