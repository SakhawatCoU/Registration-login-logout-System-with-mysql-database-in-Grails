<%--
  Created by IntelliJ IDEA.
  User: DCL
  Date: 10/25/2019
  Time: 8:55 PM
--%>



<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>

    <style>
    body {
        font-family: "Lato", sans-serif;
    }

    /*.sidenav {*/
    /*    height: 200%;*/
    /*    width: 160px;*/
    /*    position: absolute;*/
    /*    z-index: 1;*/
    /*    margin-top: -25px;*/
    /*    left: 0;*/
    /*    background-color: #111;*/
    /*    overflow-x: hidden;*/
    /*    padding-top: 20px;*/
    /*}*/

    .sidenav a {
        padding: 6px 8px 6px 16px;
        text-decoration: none;
        font-size: 15px;
        color: #FFFFFF;
        display: block;
    }
    .sidenav a{
        border-bottom: 1px solid white;
    }

    .sidenav a:hover {
        color: #f1f1f1;
    }

    .main {
        margin-left: 160px; /* Same as the width of the sidenav */
        font-size: 28px; /* Increased text to enable scrolling */
        padding: 0px 10px;
    }

    @media screen and (max-height: 450px) {
        .sidenav {padding-top: 15px;}
        .sidenav a {font-size: 12px;
        }
    }
    .topnav {
        background-color: #000000;
    }
    .dropdown-menu:hover,
    .dropdown-menu{
        background: none;
    }
    .topnav a {
        float: left;
        color: #252525;
        text-align: center;
        padding: 5px 15px;
        text-decoration: none;
        font-size: 16px;
    }

    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    .topnav a.active {
        background-color: #000000;
        color: white;
    }

    .topnav-right {
        float: right;
    }
    .main h3{
        text-align: left;

    }
    .main .tittle{
        border-bottom: 1px solid #222;
    }
    .btn-secondary:hover,
    .btn-secondary:focus,
    .btn-secondary{
        background: none !important;
        border: none !important;
    }
    .dropdown-menu.show {
        display: block;
        background-color: #fff;
        padding: 0;
    }
    .dropdown-menu{
        border: 2px solid #252525;
    }
.nav_menu{
    font-size: 30px !important;
}
.table_content{
    padding-bottom: 40px;
}
.sidebar {
    border-right: 2px solid #252525;
    padding-top: 15px;
    height: 100%;
}
.sidebar_nav{
    list-style: none;
    display: block;
    text-align: center;
    padding: 0;
    margin: 0;
}
.sidebar_nav li a {
    color: #252525;
    text-decoration: none;
    border-bottom: 1px solid #252525;
    display: block;
    padding: 10px 0;
}
.main-content {
    border-bottom: 2px solid #252525;
    border-left: 2px solid #252525;
    border-right: 2px solid #252525;
    overflow: hidden;
}
.heading-title {
    border-bottom: 2px solid #252525;
    text-align: center;
    padding: 20px 0;
    margin-bottom: 50px;
}
    #example_wrapper{
        padding: 0 15px;
    }

    </style>
</head>
<body>

<div class="topnav">
    <div class="container-fluid">
        <div class="row justify-content-between align-items-center">
            <div class="col-md-6">
                <a class="active nav_menu" href="#">Navigation</a>
            </div>

            <div class="col-md-6 text-right">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${persons[0].firstname} ${persons[0].lastname}
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item border-bottom" href="http://localhost:8080/chance_password/index">Change Password</a>
                        <a class="dropdown-item" href="http://localhost:8080/home/index">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="container-fluid">
    <div class="main-content">
        <div class="row">
            <div class="col-md-2 pr-0">
                <div class="sidebar">
                    <ul class="sidebar_nav">
                        <li><a href="http://localhost:8080/profile/index">User Profile</a></li>
                        <li><a href="http://localhost:8080/chance_password/index">Change Password</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10 pl-0">
                <h2 class="heading-title">User List</h2>
                <div class="table_content">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Birth Date</th>
                        <th>Email</th>
                        <th>Phone</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${persons}" var="person" status="i">
                    <tr>
                        <td>${person.firstname}${" "}${person.lastname}</td>
                        <td>${person.birthdate}</td>
                        <td>${person.email}</td>
                        <td>${person.phone}</td>
                    </tr>
                    </g:each>
                    </tfoot>
                </table>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>