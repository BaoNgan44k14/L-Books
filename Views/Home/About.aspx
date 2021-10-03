<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Views_Home_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="About d-flex align-items-center ">
        <div class="container py-5">
        <div class="row py-4">
            <div class="text-center text-white align-item-center">
                <h1 class="logo">VỀ CHÚNG TÔI</h1>
                <p>Nơi cung cấp cho bạn các thể loại sách mới nhất trong những năm qua <br /> Đưa bạn vào một thế giới tri thức</p>
            </div>
        </div>
        </div>
    </section>

   <div class="intro">
        <div class="container">
            <div class="row  intro__container">
                <div class="col-6">
                    <div class="intro__image">
                        <img src="../../assets/images/banner.jpg" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="intro__content ">
                        <div class="intro__content--title ">
                            <h1>Chúng tôi chứa đựng kho tri thức lớn</h1>
                        </div>
                        <div class="intro__content--text ">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis vulputate eros, iaculis consequat nisl. Nunc et suscipit urna. Integer elementum orci eu vehicula pretium. Donec bibendum tristique condimentum. Aenean in
                                lacus ligula. Phasellus euismod gravida eros. Aenean nec ipsum aliquet, pharetra magna id, interdum sapien. Etiam id lorem eu nisl pellentesque semper. Nullam tincidunt metus placerat, suscipit leo ut, tempus nulla. Fusce
                                at eleifend tellus. Ut eleifend dui nunc, non fermentum quam placerat non. Etiam venenatis nibh augue, sed eleifend justo tristique eu</p>
                        </div>
                    </div>
                    <div class="home__container__slider--btn">
                        <div class="btn__bgc"></div>
                        <a href="#">Mua ngay 
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

