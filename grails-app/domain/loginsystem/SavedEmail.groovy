package loginsystem

class SavedEmail {
    String email
    String password
    static constraints = {
        email maxSize: 30
        email nullable: false
        password maxSize: 30
        password nullable: false
    }
}
