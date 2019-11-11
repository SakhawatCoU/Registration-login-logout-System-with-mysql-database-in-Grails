package loginsystem

class HelloWorldController {


    def index() {

    }
    def save() {

        def practiceGSP = new UserInfo(params)
        practiceGSP.password = practiceGSP.password.encodeAsMD5()
        practiceGSP.save()
        redirect(controller:'helloWorld', action: 'index')
    }
    def checkAvailable = {
        def available
        if( UserInfo.findByEmail(params.id) ) {
            available = false
        } else {
            available = true
        }
        response.contentType = "application/json"
        render """{"available":${available}}"""
    }
}
