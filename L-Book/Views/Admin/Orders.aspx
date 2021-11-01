<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminLayout.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Views_Admin_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Quản Lý Đơn Hàng
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container">
        <div class="row">
          <div class="Product-management">
            <div class=" Product-table">
                <div class="table__body">
                    <div class="table-wrapper">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BillID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="BillID" HeaderText="BillID" InsertVisible="False" ReadOnly="True" SortExpression="BillID" />
                                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                                <asp:CheckBoxField DataField="StatusBill" HeaderText="StatusBill" SortExpression="StatusBill" />
                                <asp:TemplateField HeaderText="Confirm">
                                    <ItemTemplate>
                                        <button class="btn-yes btn btn-warning" type="button">Duyệt</button>
                                        <button class="btn-no btn btn-danger">Huỷ</i></button>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryBookConnectionString2 %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
                        </div>
                    </div>
               </div>
            </div>
          </div>
        </div>
    </div>
</asp:Content>

