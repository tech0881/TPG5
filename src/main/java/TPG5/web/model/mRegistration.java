package TPG5.web.model;

// Setters and Getters for Registration page
public class mRegistration {
    private String fname;
    private String mname;
    private String lname;
    private String usrname;
    private String password;
    private String rootpass;
    private String email;
    private String useraccess;
    private String oboSq1;
    private String oboSq2;
    private String txtans1;
    private String txtans2;

    public String getFname() {
        return fname;
    }
    public void setfname(String fname) {
        this.fname = fname;
    }
    public String getmname() {
        return mname;
    }
    public void setmname(String mname) {
        this.mname = mname;
    }
    public String getlname() {
        return lname;
    }
    public void setlname(String lname) {
        this.lname = lname;
    }
    public String getusrname() {
        return usrname;
    }
    public void setusrname(String usrname) {
        this.usrname = usrname;
    }
    public String getpassword() {
        return password;
    }
    public void setpassword(String password) {
        this.password = password;
    }
    public String getrootpass() {
        return rootpass;
    }
    public void setrootpass(String rootpass) {
        this.rootpass = rootpass;
    }
    public String getemail() {
        return email;
    }
    public void setemail(String email) {
        this.email = email;
    }
    public String getuseraccess() {
        return useraccess;
    }
    public void setuseraccess(String useraccess) {
        this.useraccess = useraccess;
    }
    public String getoboSq1() {
        return oboSq1;
    }
    public void setoboSq1(String oboSq1) {
        this.oboSq1 = oboSq1;
    }
    public String getoboSq2() {
        return oboSq2;
    }
    public void setoboSq2(String oboSq2) {
        this.oboSq2 = oboSq2;
    }
    public String gettxtans1() {
        return txtans1;
    }
    public void settxtans1(String txtans1) {
        this.txtans1 = txtans1;
    }
    public String gettxtans2() {
        return txtans2;
    }
    public void setttxtans2(String txtans2) {
        this.txtans2 = txtans2;
    }
    @Override
    public String toString() {
        return "mRegistration (fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", usrname=" 
        + usrname + ", password=" + password + ", rootpass=" + rootpass + ", email=" + email + ", useraccess=" 
        + useraccess + ", oboSq1=" + oboSq1 + ", oboSq2=" + oboSq2 + ", txtans1=" + txtans1 + ", txtans2=" + txtans2 + ")";
    }
}
