package loginsystem

class BootStrap {

    def init = { servletContext ->
        if (UserInfo.count() == 0) {
            new UserInfo(firstname: 'Mr', lastname: 'Admin',address: 'Mohakhali DOSH',phone: '12456789',email: 'admin@localhost.local',birthdate: '01/01/2000',password: '21232f297a57a5a743894a0e4a801fc3' ).save()
            new UserInfo(firstname: 'Sakhawat', lastname: 'Hosen',address: 'Comilla University',phone: '+8801743414772',email: 'csecou134@gmail.com',birthdate: '01/01/2000',password: '912ec803b2ce49e4a541068d495ab570' ).save()
        }
    }
    def destroy = {
    }
}
