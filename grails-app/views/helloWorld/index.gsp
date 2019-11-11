<!DOCTYPE html>
<html lang="en">
<head>
    <title>Registration Panel</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="jquery-ui.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="jquery-ui.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#date" ).datepicker();
        } )
        $(".alert").alert()

    </script> <g:javascript src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></g:javascript>
    <script type="text/javascript">
        $(function(){
            $("#emailid").blur(function(){
                if($(this).length > 0) {
                    var url = "${createLink(controller:'helloWorld', action:'checkAvailable')}"
                    $.getJSON(url, {id:$(this).val()}, function(json){
                        if(!json.available) {
                            $("#emailid").css("border", "1px solid red");
                            $("#spn").html("This Email is already taken").show();
                        }
                        else{
                            $("#emailid").css("border", "1px solid green");
                            $("#spn1").html("This Email is available").show();
                        }
                    });
                }
            });
        });
    </script>



    <style type="text/css">
    body {
        color: #999;
        background: #f3f3f3;
        font-family: 'Roboto', sans-serif;
    }
    .form-control {
        border-color: #eba2a2;
        min-height: 30px;
        box-shadow: none !important;
    }
    .form-control:focus {
        border-color: #5cd3b4;
    }
    .form-control, .btn {
        border-radius: 3px;
    }
    .signup-form {
        width: 450px;
        margin: 0 auto;
        padding: 30px 0;
    }
    .signup-form h3 {
        color: #333;
        margin: 0 0 30px 0;
        display: inline-block;
        padding: 0 3px 3px 0;
        border-bottom: 3px solid #5cd3b4;
    }
    .signup-form form {
        color: #999;
        border-radius: 7px;
        margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, .3, 0.3);
        padding: 10px;
    }
    .signup-form .form-group {
        margin-bottom: 10px;
    }
    .signup-form label {
        font-weight: normal;
        font-size: 13px;
    }
    .signup-form input[type="checkbox"] {
        margin-top: 2px;
    }
    .signup-form .btn {
        font-size: 16px;
        font-weight: bold;
        background: #5cd3b4;
        border: none;
        margin-top: 10px;
        min-width: 100px;
    }
    .signup-form .btn:hover, .signup-form .btn:focus {
        background: #41cba9;
        outline: none !important;
    }
    .signup-form a {
        color: #5cd3b4;
        text-decoration: underline;
    }
    .signup-form a:hover {
        text-decoration: none;
    }
    .signup-form form a {
        color: #5cd3b4;
        text-decoration: none;
    }
    .signup-form form a:hover {
        text-decoration: underline;
    }
    .input-group .form-control {
        position: relative;
        z-index: 2;
        float: right;
        width: 95%;
        margin-bottom: 0;
    }
        #spn,#spn1{
            margin-left: 260px;
        }
    </style>
</head>
<body>

<div class="signup-form">
    <form action="index" controller="helloWorld" class="form-horizontal">
        <div class="col-xs-8 col-xs-offset-4">
        </div>
        <div class="col-xs-8 col-xs-offset-4">
            <h3>Registration Panel</h3>
        </div>
        <g:if test="${message}">
            <span style="color: red">${message}</span>
        </g:if>
        <div class="form-group">
            <label class="control-label col-xs-4">First Name</label>
            <div class="col-xs-8">
                <input type="text" class="form-control" name="firstname" required="required">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4">Last Name</label>
            <div class="col-xs-8">
                <input type="text" class="form-control" name="lastname" required="required">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4">Address</label>
            <div class="col-xs-8">
                <input type="text" class="form-control" name="address" required="required">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4">Phone</label>
            <div class="col-xs-8">
                <input type="text" class="form-control" name="phone" required="required">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4">Email</label>
            <div class="col-xs-8">
                <input type="email" class="form-control" name="email" id="emailid" required="required" value ="" onBlur="blur()">
            </div>
            <span  id="spn" style="color: red" ></span> <span  id="spn1" style="color: green" ></span>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4">Birthdate</label>
            <div class="col-xs-8">
                <input  class="form-control" name="birthdate" required="required" id="date" placeholder="Click on the text field">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4">Password</label>
            <div class="col-xs-8">
                <input type="password" class="form-control" name="password" required="required">
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-primary btn-lg">Resister</button>
                <button type="reset" class="btn btn-primary btn-lg">Cancel</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>


