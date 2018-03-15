package caloriefood.projectandroid.com.caloriefood;

import java.util.List;

/**
 * Created by warawat on 3/9/2017.
 */

public class UserData {
    /**
     * output : [{"id":"1","employeeID":"0","username":"warawat","password":"123456","name_title":"0","full_name":"warawat","identityid":"1420500059556","address":"65","tel":"0892759736","email":"wa_ra_wat121@hotmail.com","sex":"Man","emp_division":"0","emp_status":"0","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/_ic_launcher_onti_12.png"},{"id":"2","employeeID":"0","username":"admin","password":"123456","name_title":"0","full_name":"warawat","identityid":"1420500056559","address":"65/2","tel":"0831456012","email":"warawatsonchang@gmail.com","sex":"Man","emp_division":"0","emp_status":"0","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/_ic_launcher_onti_1.png"},{"id":"5","employeeID":"","username":"t","password":"t","name_title":"","full_name":"t","identityid":"t","address":"y","tel":"g","email":"b","sex":"b","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/myImagesLocationImage-2688.jpg"},{"id":"6","employeeID":"","username":"test1","password":"123456","name_title":"","full_name":"warawatsonchang@gmail.com ","identityid":"124","address":"yy","tel":"582288557","email":"warawatsonchang@gmail.com","sex":"ชาย","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/myImagesLocationImage-3439.jpg"},{"id":"7","employeeID":"","username":"u","password":"u","name_title":"","full_name":"u","identityid":"1420500029556","address":"7","tel":"0892810049","email":"wa_ra_wat121@hotmail.com","sex":"���","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/myImagesLocationImage-4974.jpg"},{"id":"8","employeeID":"","username":"y","password":"y","name_title":"","full_name":"warawat","identityid":"1420500059556","address":"65","tel":"0892810449","email":"wa_ra_wat121@hotmail.com","sex":"ชาย","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/myImagesLocationImage-3259.jpg"},{"id":"9","employeeID":"","username":"y","password":"y","name_title":"","full_name":"warawat","identityid":"1420500059556","address":"65","tel":"0892810449","email":"wa_ra_wat121@hotmail.com","sex":"ชาย","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/myImagesLocationImage-3259.jpg"},{"id":"10","employeeID":"","username":"t","password":"t","name_title":"","full_name":"t","identityid":"1420500089556","address":"6","tel":"0892810449","email":"wa","sex":"ชาย","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/myImagesLocationImage-4787.jpg"},{"id":"11","employeeID":"","username":"tt","password":"tt","name_title":"","full_name":"","identityid":"","address":"","tel":"","email":"","sex":"","emp_division":"","emp_status":"","image_name":"http://drive-utcc.com/RestuarantCalorie/uploads/user/"}]
     * status : true
     */

    private boolean status;
    private List<OutputBean> output;

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public List<OutputBean> getOutput() {
        return output;
    }

    public void setOutput(List<OutputBean> output) {
        this.output = output;
    }

    public static class OutputBean {
        /**
         * id : 1
         * employeeID : 0
         * username : warawat
         * password : 123456
         * name_title : 0
         * full_name : warawat
         * identityid : 1420500059556
         * address : 65
         * tel : 0892759736
         * email : wa_ra_wat121@hotmail.com
         * sex : Man
         * emp_division : 0
         * emp_status : 0
         * image_name : http://drive-utcc.com/RestuarantCalorie/uploads/user/_ic_launcher_onti_12.png
         */

        private String id;
        private String employeeID;
        private String username;
        private String password;
        private String name_title;
        private String full_name;
        private String identityid;
        private String address;
        private String tel;
        private String email;
        private String sex;
        private String emp_division;
        private String emp_status;
        private String image_name;

        public String getId() {
            return id;
        }

        public void setId(String id) {
            this.id = id;
        }

        public String getEmployeeID() {
            return employeeID;
        }

        public void setEmployeeID(String employeeID) {
            this.employeeID = employeeID;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public String getName_title() {
            return name_title;
        }

        public void setName_title(String name_title) {
            this.name_title = name_title;
        }

        public String getFull_name() {
            return full_name;
        }

        public void setFull_name(String full_name) {
            this.full_name = full_name;
        }

        public String getIdentityid() {
            return identityid;
        }

        public void setIdentityid(String identityid) {
            this.identityid = identityid;
        }

        public String getAddress() {
            return address;
        }

        public void setAddress(String address) {
            this.address = address;
        }

        public String getTel() {
            return tel;
        }

        public void setTel(String tel) {
            this.tel = tel;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getSex() {
            return sex;
        }

        public void setSex(String sex) {
            this.sex = sex;
        }

        public String getEmp_division() {
            return emp_division;
        }

        public void setEmp_division(String emp_division) {
            this.emp_division = emp_division;
        }

        public String getEmp_status() {
            return emp_status;
        }

        public void setEmp_status(String emp_status) {
            this.emp_status = emp_status;
        }

        public String getImage_name() {
            return image_name;
        }

        public void setImage_name(String image_name) {
            this.image_name = image_name;
        }
    }
}
