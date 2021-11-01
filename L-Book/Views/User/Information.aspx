<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Information.aspx.cs" Inherits="Views_User_Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="Profile d-flex align-items-center ">
        <div class="container">
            <div class="Contact__title ">
                <h1>Profile</h1>
            </div> 
        </div>
    </section>
    <section class="Profile-information container">
        <div class="row">
            <div class="profile-image col-3">
                <div class="user-image ">
                    <%--<asp:FileUpload ID="Fileupload_user" runat="server" />--%>
                </div>
            </div>
            <div class="user-profile col-9">
                <div class="profile-title">
                    <h2>Thông tin tài khoản của bạn</h2>
                </div>
                <div class="Add-Form__form">
                        <div class="form-group">
                            <asp:Label ID="lbl_tentaikhoan" runat="server" Text="Tên Đăng Nhập" CssClass="form-label" for="txt_tentaikhoan"></asp:Label>
                            <asp:TextBox ID="txt_tentaikhoan" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
<%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Vui lòng nhập tên tài khoản" ControlToValidate="txt_tentaikhoan" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_matkhau" runat="server" Text="Mật Khẩu" CssClass="form-label" for="txt_matkhau"></asp:Label>
                            <asp:TextBox ID="txt_matkhau" runat="server" CssClass="form-control authentication-form" TextMode="Password"></asp:TextBox>
<%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng nhập mật khẩu" ControlToValidate="txt_matkhau" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_hoten" runat="server" Text="Họ Tên" CssClass="form-label" for="txt_hoten"></asp:Label>
                            <asp:TextBox ID="txt_hoten" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                        </div>
                            <div class="form-group">
                            <asp:Label ID="lbl_ngaysinh" runat="server" Text="Ngày Sinh" CssClass="form-label" for="txt_ngaysinh"></asp:Label>
                            <asp:TextBox ID="txt_ngaysinh" runat="server" CssClass="form-control authentication-form" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_diachi" runat="server" Text="Địa chỉ" CssClass="form-label" for="txt_diachi"></asp:Label>
                            <asp:TextBox ID="txt_diachi" runat="server" CssClass="form-control authentication-form" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_sodienthoai" runat="server" Text="Số điện thoại" CssClass="form-label" for="txt_sodienthoai"></asp:Label>
                            <asp:TextBox ID="txt_sodienthoai" runat="server" CssClass="form-control authentication-form" TextMode="Phone" min="1"></asp:TextBox>
                        </div>
                 </div>
                 <div class="profile-btn">
                    <button class="profile-edit">Sửa</button>
                 </div>
            </div>
        </div>
    </section>
</asp:Content>

