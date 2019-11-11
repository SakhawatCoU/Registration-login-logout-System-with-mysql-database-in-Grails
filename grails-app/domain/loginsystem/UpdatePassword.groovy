package loginsystem

class UpdatePassword {

    String prepassword
    String newpassword
    String confermpass

    static constraints = {
        prepassword maxSize: 30
        newpassword maxSize: 30
        confermpass maxSize: 30
        prepassword nullable: true
        newpassword nullable: true
        confermpass nullable: true
    }
}
