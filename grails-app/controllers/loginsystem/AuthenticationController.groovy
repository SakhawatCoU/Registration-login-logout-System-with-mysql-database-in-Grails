package loginsystem



class AuthenticationController {


    def doLogin() {
        def persons = UserInfo.list()
        def practiceGSP = new UserInfo(params)
        practiceGSP.password = practiceGSP.password.encodeAsMD5()
        def u = UserInfo.findByEmailAndPassword(practiceGSP.email,practiceGSP.password)
        if(u){
            render "Successfully loging"
        }


    }


}
