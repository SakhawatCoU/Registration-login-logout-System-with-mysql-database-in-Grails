<%--
  Created by IntelliJ IDEA.
  User: DCL
  Date: 11/5/2019
  Time: 5:45 PM
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <title>Login Panel</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        width: 155%;
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
        padding: 100px 0;
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
    </style>
</head>
<body>

<div class="signup-form">
    <form action="index" controller="home" class="form-horizontal">
        <div class="col-xs-8 col-xs-offset-4">
        </div>
        <div class="col-xs-8 col-xs-offset-4">
            <h3>Login Panel</h3>
        </div>
        <div class="col-xs-8 col-xs-offset-4">
            <h4>Email Address</h4>
        </div>
        <div class="form-group">
            <div class="col-xs-8">
                <input type="email" class="form-control" name="email" required="required">
            </div>
        </div>
        <div class="col-xs-8 col-xs-offset-4">
            <h4>Password</h4>
        </div>
        <div class="form-group">
            <div class="col-xs-8">
                <input type="password" class="form-control" name="password" required="required">
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-8 col-xs-offset-4">
                <button type="submit" class="btn btn-primary btn-lg" href="http://localhost:8080/admin/index">Login</button>
                <button type="reset"  class="btn btn-primary btn-lg" >Clear</button>
            </div>
        </div>

        <div class="col-xs-8 col-xs-offset-4">
            <p>Are you new here? <a href="http://localhost:8080/helloWorld/index">Register Now</a></p>
        </div>
        <br>

    </form>
</div>
</body>
</html>