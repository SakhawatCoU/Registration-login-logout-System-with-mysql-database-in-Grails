package loginsystem

class UserInfo {

    String firstname
    String lastname
    String birthdate
    String password
    String address
    String phone
    String email


    static constraints = {

        firstname maxSize: 30
        lastname maxSize: 30
        birthdate maxSize: 20
        password maxSize: 50
        address maxSize: 100
        phone maxSize: 20
        email maxSize: 40

        firstname nullable: true
        lastname nullable: true
        birthdate nullable: true
        password nullable: true
        address nullable: true
        phone nullable: true
        email nullable: true


    }
    static mapping = {
        //password type: GormEncryptedStringType
    }
}
