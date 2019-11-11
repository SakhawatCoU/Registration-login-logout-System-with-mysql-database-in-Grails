package loginsystem

class Chance_passwordController {

    def index() {
        
          def newInstance = new UpdatePassword(params)
          newInstance.prepassword = params.prepassword
          newInstance.newpassword = params.newpassword
          newInstance.confermpass = params.conpassword



         def currentAccount = SavedEmail.list();

          newInstance.prepassword = newInstance.prepassword.encodeAsMD5()
          newInstance.newpassword = newInstance.newpassword.encodeAsMD5()
          newInstance.confermpass = newInstance.confermpass.encodeAsMD5()


          def str1 = newInstance.prepassword
          def str2 = newInstance.newpassword
          def str3 = newInstance.confermpass

          if(str2!=str3){
             render "Given New Password does not match with confirmed password"
          }else {
              def currentEmail = currentAccount.email
              def pass = UserInfo.executeQuery("select password from UserInfo where email = :searchEmail",[searchEmail:currentEmail])
              if(pass[0]==str1){
                UserInfo.executeQuery("update UserInfo set password = :searchPassword where email = :searchEmail",[searchPassword:str1 , searchEmail: currentEmail])
             }
          }

        def pers = SavedEmail.list()
        def current = pers.email
      //  def user = UserInfo.findAllWhere(email: current)
       def user = UserInfo.executeQuery("select firstname,lastname,address,email,birthdate,phone from UserInfo where email = :searchEmail",[searchEmail:current])
       [userInstance:user]
    }
}
