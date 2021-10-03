<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Views_Home_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="Product d-flex align-items-center ">
        <div class="container">
            <div class="Contact__title">
                <h1>STORE</h1>
            </div> 
        </div>
    </section>

    <div class="Product__catalogue">
        <div class="container">
            <div class="Product__catalogue__container container">
                <div class="row col-2">
                    <div class="Product__catalogue__container__tab active">
                        <span>Truyện, Tiểu Thuyết</span>
                    </div>
                    <div class="Product__catalogue__container__tab">
                       
                        <span>Sách thiếu nhi</span>
                    </div>
                     <div class="Product__catalogue__container__tab">
                        <span>Tâm lý</span>
                    </div>
                    <div class="Product__catalogue__container__tab ">
                        
                        <span>Chính trị – pháp luật</span>
                    </div>
                    <div class="Product__catalogue__container__tab">
                        
                        <span>Khoa học công nghệ – Kinh tế</span>
                    </div>
                    <div class="Product__catalogue__container__tab ">
                        
                        <span>Xã hội – Lịch sử</span>
                    </div>
                    <div class="Product__catalogue__container__tab ">
                        
                        <span>Giáo trình</span>
                    </div>
                </div>
            </div>
            <div class="Product__search">
                <div class="row Product__search__container">
                    <div class="Product__search__container--item l-4 m-6 c-12">
                        <div>
                            <span>Tìm kiếm</span>
                        </div>
                        <input type="text">
                    </div>
                    <div class="Product__search__container--item l-1 m-3 c-6">
                        <div>
                            <span>Sắp xếp theo giá: </span>
                        </div>
                        <asp:DropDownList ID="dd_price" runat="server">
                            <asp:ListItem>Thấp đến Cao</asp:ListItem>
                            <asp:ListItem>Cao đến Thấp</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="Product__search__container--item l-1 m-3 c-6">
                        <div>
                            <span>Sắp xếp theo năm</span>
                        </div>
                        <asp:DropDownList ID="dd_years" runat="server">
                            <asp:ListItem>Mới nhất</asp:ListItem>
                            <asp:ListItem>Cũ nhất</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="Product__search__container--btn l-2 m-4 m-o-7 c-4 c-o-7">
                        <a href="#">Search</a>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

