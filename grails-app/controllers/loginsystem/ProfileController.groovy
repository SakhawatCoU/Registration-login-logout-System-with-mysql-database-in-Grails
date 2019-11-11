package loginsystem

import org.hsqldb.User

class ProfileController {

    def index() {
        def persons = SavedEmail.list()
        def totalinfo = UserInfo.list()
        def current = persons.email
        //def user = UserInfo.findAllWhere(email: current)
        def user = UserInfo.executeQuery("select firstname,lastname,address,email,birthdate,phone from UserInfo where email = :searchEmail",[searchEmail:current])
        [userInstance:user]
    }
}
