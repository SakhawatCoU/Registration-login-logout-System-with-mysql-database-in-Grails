package loginsystem

class HomeController {


    def index() {
        def persons = UserInfo.list()
        def practiceGSP = new UserInfo(params)
        practiceGSP.password = practiceGSP.password.encodeAsMD5()
        def u = UserInfo.findByEmailAndPassword(practiceGSP.email, practiceGSP.password)
        if(u!=null){
            if(practiceGSP.email=="admin@localhost.local"){

                redirect(controller: 'admin', action: 'index')
            }
            else {
                def savedemail = new SavedEmail(params)
                savedemail.save()
                redirect(controller: 'profile', action: 'index')
            }
        }
        else {

            if(practiceGSP.email!=null && practiceGSP.password!=null) {
                def message = "Email or Password is incorrect !!!"
                 [message: message]
            }
        }


    }
}
