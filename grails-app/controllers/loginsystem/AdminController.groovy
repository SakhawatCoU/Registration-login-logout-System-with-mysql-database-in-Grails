package loginsystem

class AdminController {

    def index() {
        def persons = UserInfo.list()
        [persons:persons]
    }
}
