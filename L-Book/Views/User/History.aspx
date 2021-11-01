<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="Views_User_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="History d-flex align-items-center ">
        <div class="container">
            <div class="Contact__title ">
                <h1>History</h1>
            </div> 
        </div>
    </section>
    <div class="Product__catalogue">
        <div class="container Product__catalogue--container">
            <div class="History_catalogue__container container">
                <div class="row col-4">
                    <div class="Product__catalogue__container__tab active">
                        <span><i class="fas fa-archive"></i>Chờ Xác Nhận</span>
                    </div>
                    <div class="Product__catalogue__container__tab">
                       
                        <span><i class="fas fa-truck"></i>Đang giao</span>
                    </div>
                     <div class="Product__catalogue__container__tab">
                        <span><i class="fas fa-clipboard-check"></i>Đơn đã đặt</span>
                    </div>
                </div>
            </div>
            <div class="Product__search">
                <div class="row Product__search__container">
                    <div class="col-5">
                        <div class="Product__search__container--item">
                            <span>Tìm kiếm</span>
                        </div>
                        <asp:TextBox ID="Txt_search" runat="server" CssClass="Product__search__container--search__txt"></asp:TextBox>
                    </div>
                    <div class="col-2">
                        <div class="Product__search__container--item">
                            <span>Sắp xếp theo giá: </span>
                        </div>
                        
                        <asp:DropDownList ID="dd_price" runat="server" CssClass="Product__search__container--search--dd">
                            <asp:ListItem>Thấp đến Cao</asp:ListItem>
                            <asp:ListItem>Cao đến Thấp</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <div class="Product__search__container--item">
                            <span>Sắp xếp theo năm</span>
                        </div>
                        <asp:DropDownList ID="dd_years" runat="server" CssClass="Product__search__container--search--dd">
                            <asp:ListItem>Mới nhất</asp:ListItem>
                            <asp:ListItem>Cũ nhất</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="Product__search__container--btn col-3">
                        <a href="#">Search</a>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="History-items">
        <div class="container">
            <div class="history-waiting-order">
                 <div class="table__body">
                    <div class="table-wrapper">
                        <div class="table-responsive">
                             <asp:GridView ID="Grv_taikhoan" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" PageSize="8">
                                       <Columns>
                                            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                                            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                                            <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                                            <asp:BoundField DataField="UserAddress" HeaderText="UserAddress" SortExpression="UserAddress" />
                                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" /> 
                                        </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryBookConnectionString2 %>" SelectCommand="SELECT [UserID], [RoleID], [UserName], [UserPassword], [FullName], [Gender], [Birthday], [UserAddress], [PhoneNumber] FROM [Users]"></asp:SqlDataSource>
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </div>
</asp:Content>

