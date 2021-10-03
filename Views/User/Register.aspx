﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="View_User_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="../../assets/css/Style.css" rel="stylesheet" />
    <link href="../../assets/css/Base.css" rel="stylesheet" />
    <link href="../../library/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../library/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
    <link href="../../library/boxicons-2.0.9/css/boxicons.min.css" rel="stylesheet" />

    <style>
        html,
        body {
            height: 100%;
            background-image: var(--bg-btn);
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
       
    </style>
</head>
<body>
    <div class="container global-authentication">
    <div class="authentication row no-gutters content justify-content-md-center align-self-center">
	    <div class="col-lg-6 authentication-img ">
            <img src="../../assets/images/login.png" class="img-fluid"/>
	    </div>
        <div class="col-lg-6 align-self-center ">
	        <h1 class="authentication-text">ĐĂNG KÝ</h1>
		    <form id="form1" runat="server">
                <div class="form-group">
                    <asp:Label ID="lbl_username" runat="server" Text="Tên đăng nhập " class="form-label"  for="txt_username"></asp:Label>
                    <asp:TextBox ID="txt_username" runat="server" class="form-control authentication-form"></asp:TextBox>
                    <span class="form-message"></span>
        
                </div>

                <div class="form-group">
                    <asp:Label ID="lbl_password" runat="server" Text="Mật khẩu " class="form-label" for="txt_password"></asp:Label>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control authentication-form"></asp:TextBox>
                    <span class="form-message"></span>
                </div>

                <div class="form-group">
                    <asp:Label ID="lbl_passwordconfirm" runat="server" Text="Nhập lại mật khẩu " class="form-label" for="txt_passwordconfirm"></asp:Label>
                    <asp:TextBox ID="txt_passwordconfirm" runat="server" TextMode="Password" class="form-control authentication-form"></asp:TextBox>
                    <span class="form-message"></span>
                </div>

                <div class="form-group">
                <asp:Button ID="btn_login" runat="server" Text="Đăng Ký" class="btn btn-success mt-3 authentication-btn"/>
                </div>
  
                <span class="authentication-noaccount">Bạn đã có tài khoản.  
                <a href="Login.aspx" class="text-danger">Đăng Nhập Ngay!</a>
                </span>
		    </form>
        </div>
    </div>
    </div>
  



     <!-- Liên kết vs file js -->    
    <script src="../../assets/js/Validator.js"></script>    <script>        // Output sẽ nhận được         Validator({
            form: '#form1',            errorSelector: '.form-message',            rules: [              Validator.isRequired('#txt_username'),              Validator.isEmail('#txt_email'),              Validator.minLength('#txt_password', 6),              Validator.isConfirmed('#txt_passwordconfirm', function () {
                  return document.querySelector('#form1 #txt_password').value
              }, 'Mật khẩu nhập lại không chính xác')                  // message            ]
        });    </script>

</body>
</html>
