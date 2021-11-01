<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="View_User_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="../../library/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../library/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
    <link href="../../assets/css/Base.css" rel="stylesheet" />
    <link href="../../assets/css/Grid.css" rel="stylesheet" />
    <link href="../../assets/css/Style.css" rel="stylesheet" />
    <link href="../../assets/css/Responsive.css" rel="stylesheet" />
    <style>
        html,
        body {
            height: 100%;
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            background-image: var(--bg-section);
        }
        .container {
            min-height: 100%;
        }
        .auto-style1 {
            color: #000000;
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-md-center">
        <div class="row col-4 align-self-center">
            <form id="form1" runat="server" class="changepass">
                <h1 class="authentication-text mt-5">ĐỔI MẬT KHẨU</h1>
                <div class="form-group">
                    <asp:Label ID="lbl_oldpass" runat="server" Text="Mật khẩu cũ " class="form-label" for="txt_oldpass" CssClass="auto-style1"></asp:Label>
                    <asp:TextBox ID="txt_oldpass" runat="server" TextMode="Password" class="form-control authentication-form"></asp:TextBox>
                    <span class="form-message"></span>
                </div>

                <div class="form-group">
                    <asp:Label ID="lbl_newpass" runat="server" Text="Mật khẩu mới " class="form-label" for="txt_newpass" CssClass="auto-style1"></asp:Label>
                    <asp:TextBox ID="txt_newpass" runat="server" TextMode="Password" class="form-control authentication-form"></asp:TextBox>
                    <span class="form-message"></span>
                </div>

                 <div class="form-group">
                    <asp:Label ID="lbl_newpass2" runat="server" Text="Nhập lại mật khẩu mới " class="form-label" for="txt_newpass2" CssClass="auto-style1"></asp:Label>
                    <asp:TextBox ID="txt_newpass2" runat="server" TextMode="Password" class="form-control authentication-form"></asp:TextBox>
                    <span class="form-message"></span>
                </div>

                <div class="form-group mb-5">
                    <asp:Button ID="btn_changepass" runat="server" Text="Đổi mật khẩu" class="btn btn-danger mt-3 authentication-btn"/>
                    <asp:Button ID="btn_cancer" runat="server" Text="Hủy" class="btn btn-outline-danger mt-3 authentication-btn"/>
                </div>
            </form>
        </div>
    </div>


     <!-- Liên kết vs file js -->
   
    <script src="../../assets/js/Validator.js"></script>
    <script>
        // Output sẽ nhận được 
        Validator({
            form: '#form1',
            errorSelector: '.form-message',
            rules: [
              Validator.isRequired('#txt_oldpass'),
              Validator.minLength('#txt_newpass', 6),
              Validator.isConfirmed('#txt_newpass2', function () {
                  return document.querySelector('#form1 #txt_newpass').value
              }, 'Mật khẩu nhập lại không chính xác')
                  // message
            ]
        });

    </script>



</body>
</html>
