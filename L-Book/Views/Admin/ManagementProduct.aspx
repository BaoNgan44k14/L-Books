<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminLayout.master" AutoEventWireup="true" CodeFile="ManagementProduct.aspx.cs" Inherits="Views_Admin_ManagementProduct" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Products
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <div class="container">
        <div class="row">
          <div class="Product-management">
            <div class=" Product-table">
                <div class="Product-table__header">
                    <h2>Quản Lý Sản Phẩm</h2>
                    <button id="Product-management__newProduct" type="submit">Thêm sản phẩm <i class="fas fa-plus"></i></button>
                </div>
                <div class="Product-table__body">
                    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" CssClass="table table-hover text-center" DataKeyNames="BookID" DataSourceID="SqlDataSource2" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="MÃ SÁCH" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                            <asp:BoundField DataField="BookName" HeaderText="TÊN SÁCH" SortExpression="BookName" />
                            <asp:BoundField DataField="Quantity" HeaderText="SỐ LƯỢNG" SortExpression="Quantity" />
                            <asp:BoundField DataField="Sole" HeaderText="ĐÃ BÁN" SortExpression="Sole" />
                            <asp:BoundField DataField="BookPrice" HeaderText="ĐƠN GIÁ" SortExpression="BookPrice" />
                            <asp:BoundField DataField="TotalBook" HeaderText="TỔNG" SortExpression="TotalBook" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryBookConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryBookConnectionString %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>--%>
                    <div class="table-wrapper">
                        <div class="cart">
                         <div class="table-responsive">
                                <table class="table table-hover Product__management">
                                    <thead>
                                        <tr>
                                            <th>Mã sách</th>    
                                            <th>Tên sách</th>    
                                            <th>Hình ảnh</th>    
                                            <th>Đơn giá</th>    
                                            <th>Mô tả</th>    
                                            <th>Tổng số lượng đã bán</th>    
                                            <th>Tổng số lượng tồn</th>    
                                            <th>Tác vụ</th>                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="">
                                        <td>1</td>
                                        <td>5cm trên giây</td>
                                        <td>
                                            <img src="../../assets/images/top4.PNG" alt="Alternate Text" /></td>
                                        <td>150.000</td>
                                        <td >
                                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                                        </td>
                                        <td>40</td>
                                        <td>40</td>
                                        <td>
                                            <button><i class="fas fa-pen"></i></button>
                                            <button class="Cart__Product__tab--delete"><i class="far fa-trash-alt"></i></button>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td>1</td>
                                        <td>5cm trên giây</td>
                                        <td>
                                            <img src="../../assets/images/top3.PNG" />

                                        </td>
                                        <td>150.000</td>
                                        <td >
                                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                                        </td>
                                        <td>40</td>
                                        <td>40</td>
                                        <td>
                                            <button><i class="fas fa-pen"></i></button>
                                            <button class="Cart__Product__tab--delete"><i class="far fa-trash-alt"></i></button>

                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td>1</td>
                                        <td>5cm trên giây</td>
                                        <td>
                                            <img src="../../assets/images/top1.PNG" alt="Alternate Text" /></td>
                                        <td>150.000</td>
                                        <td >
                                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                                        </td>
                                        <td>40</td>
                                        <td>40</td>
                                        <td>
                                            <button><i class="fas fa-pen"></i></button>
                                            <button class="Cart__Product__tab--delete"><i class="far fa-trash-alt"></i></button>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td>1</td>
                                        <td>5cm trên giây</td>
                                        <td>
                                            <img src="../../assets/images/top2.PNG" alt="Alternate Text" /></td>
                                        <td>150.000</td>
                                        <td >
                                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                                        </td>
                                        <td>40</td>
                                        <td>40</td>
                                        <td>
                                            <button><i class="fas fa-pen"></i></button>
                                            <button class="Cart__Product__tab--delete"><i class="far fa-trash-alt"></i></button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                       </div>
                
                  </div>
               </div>
            </div>
          </div>
        </div>
    </div>

    
    <div class="modal">
        <div class="modal__body"> 
            <div class="Add-Form">
                <div class="Add-Form__Container container">
                    <div class="Add-Form__heading">
                        <h3>Thêm tài khoản</h3>
                        <button class="js-modal-close"><i class="far fa-times-circle"></i></button>
                    </div>
                    <div class="Add-Form__form">
                        <div class="row">
                            <div class="form-group col ">
                                <asp:Label ID="lbl_masach" runat="server" Text="Mã sách" CssClass="form-label" for="txt_masach"></asp:Label>
                                <asp:TextBox ID="txt_masach" runat="server" CssClass="form-control authentication-form" Enabled="False"></asp:TextBox>
                            </div>
                            <div class="form-group col ">
                                <asp:Label ID="lbl_tensach" runat="server" Text="Tên sách" CssClass="form-label" for="txt_tensach"></asp:Label>
                                <asp:TextBox ID="txt_tensach" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Vui lòng nhập tên sách" ControlToValidate="txt_tensach" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col">
                                <asp:Label ID="lbl_soluong" runat="server" Text="Số lượng" CssClass="form-label" for="txt_soluong"></asp:Label>
                                <asp:TextBox ID="txt_soluong" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Vui lòng nhập số lượng" ControlToValidate="txt_soluong" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col">
                                <asp:Label ID="lbl_dongia" runat="server" Text="Đơn giá" CssClass="form-label" for="txt_dongia"></asp:Label>
                                <asp:TextBox ID="txt_dongia" runat="server" CssClass="form-control authentication-form" TextMode="SingleLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Vui lòng nhập số tiền" ControlToValidate="txt_dongia" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col form-group">
                                <asp:Label ID="lbl_theloai" Text="Thể loại" runat="server" CssClass="form-label" for="dd_theloai" />
                                <asp:DropDownList ID="dd_theloai" runat="server" CssClass="form-control authentication-form">
                                    <asp:ListItem>Tiểu thuyết</asp:ListItem>
                                    <asp:ListItem>Truyện Tranh</asp:ListItem>
                                    <asp:ListItem>Chính Trị</asp:ListItem>
                                    <asp:ListItem>Khoa học</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Vui lòng chọn thể loại" ControlToValidate="dd_theloai" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_mota" runat="server" Text="Mô tả" CssClass="form-label" for="txt_mota"></asp:Label>
                            <asp:TextBox ID="txt_mota" runat="server" CssClass="form-control authentication-form" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng điền mô tả" ControlToValidate="txt_mota" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                          </div>
                        <div class="row">
                          <div class="form-group col ">
                            <asp:Label ID="lbl_sotrang" runat="server" Text="Số trang" CssClass="form-label" for="txt_sotrang"></asp:Label>
                            <asp:TextBox ID="txt_sotrang" runat="server" CssClass="form-control authentication-form" TextMode="Number" min="1"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng đnhập số trang" ControlToValidate="txt_sotrang" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                          </div>
                          <div class="form-group col ">
                            <asp:Label ID="lbl_tacgia" runat="server" Text="Tác Giả" CssClass="form-label" for="txt_tacgia"></asp:Label>
                            <asp:TextBox ID="txt_tacgia" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui lòng điền tên tác giả" ControlToValidate="txt_tacgia" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_hinhanh" runat="server" Text="Hình ảnh" CssClass="form-label"></asp:Label>
                            <input type="file" id="file-upload" class="ms-3"/>
                          </div>
                    </div>
                    <div class="btn-add">
                    <asp:Button Text="Thêm" CssClass="btn btn-outline-warning " runat="server" ValidationGroup="Themsanpham" />
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        var removeProduct = document.getElementsByClassName('Cart__Product__tab--delete');
        //Xóa items
        for (var i = 0; i < removeProduct.length; i++) {
            var button = removeProduct[i];
            button.addEventListener('click', removeCartItems)
        }

        function removeCartItems(event) {
            if (confirm('Bạn có muốn xóa sản phẩm?')) {
                var buttonClicked = event.target;
                buttonClicked.parentElement.parentElement.parentElement.remove();
            } 
        }
        // Thêm sản phẩm 
    </script>
    <script>
        const addBtns = document.querySelector('#Product-management__newProduct');
        const modal = document.querySelector('.modal');
        const modalContainer = document.querySelector('.modal__body');
        const modalClose = document.querySelector('.js-modal-close');
        // Thêm class open cho model        function showAddProducts() {
            modal.classList.add('open');
        }        // Bỏ class open cho model        function hideAddProducts() {
            modal.classList.remove('open');
        }        addBtns.addEventListener('click', showAddProducts);        modalClose.addEventListener('click', hideAddProducts);
        modal.addEventListener('click', hideAddProducts)        modalContainer.addEventListener('click', function (event) {
            event.stopPropagation()
        })
    </script>
</asp:Content>

