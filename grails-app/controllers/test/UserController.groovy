package test

class UserController {

    def index() {
        redirect(actionName:"LoginFunc")
    }
    def LoginFunc = {}
}
