<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminLayout.master" AutoEventWireup="true" CodeFile="ManagementCustomers.aspx.cs" Inherits="Views_Admin_ManagementCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Quản Lý Tài Khoản
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container">
        <div class="row">
          <div class="Product-management">
            <div class=" Product-table">
                <div class="Product-table__header">
                    <h2></h2>
                    <button id="Product-management__newProduct" type="button">Thêm tài khoản <i class="fas fa-plus"></i></button>
                </div>
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
                                    <asp:TemplateField HeaderText="Tác vụ">
                                        <ItemTemplate>
                                            <button class="edit" type="button"><i class="fas fa-pen"></i></button>
                                            <button class="delete"><i class="far fa-trash-alt"></i></button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                    </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryBookConnectionString2 %>" SelectCommand="SELECT [UserID], [RoleID], [UserName], [UserPassword], [FullName], [Gender], [Birthday], [UserAddress], [PhoneNumber] FROM [Users]"></asp:SqlDataSource>
                        </div>
                    </div>
               </div>
            </div>
          </div>
        </div>
    </div>

    
    <div class="modal-1">
        <div class="modal__add"> 
            <div class="Add-Form">
                <div class="Add-Form__Container container">
                    <div class="Add-Form__heading">
                        <h3>Thêm tài khoản</h3>
                        <button class="js-modal-close" ><i class="far fa-times-circle"></i></button>
                    </div>
                    <div class="Add-Form__form">
                        <div class="row">
                            <div class="form-group col">
                                <asp:Label ID="lbl_mataikhoan" runat="server" Text="Mã tài khoản" CssClass="form-label" for="txt_mataikhoan"></asp:Label>
                                <asp:TextBox ID="txt_mataikhoan" runat="server" CssClass="form-control authentication-form" Enabled="False"></asp:TextBox>
                            </div>
                            <div class="form-group col">
                                <asp:Label ID="lbl_hoten" runat="server" Text="Họ Tên" CssClass="form-label" for="txt_hoten"></asp:Label>
                                <asp:TextBox ID="txt_hoten" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                            </div>
                             <div class="form-group col">
                                <asp:Label ID="lbl_ngaysinh" runat="server" Text="Ngày Sinh" CssClass="form-label" for="txt_ngaysinh"></asp:Label>
                                <asp:TextBox ID="txt_ngaysinh" runat="server" CssClass="form-control authentication-form" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col">
                                <asp:Label ID="lbl_tentaikhoan" runat="server" Text="Tên Tài Khoản" CssClass="form-label" for="txt_tentaikhoan"></asp:Label>
                                <asp:TextBox ID="txt_tentaikhoan" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Vui lòng nhập tên tài khoản" ControlToValidate="txt_tentaikhoan" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>    
                            <div class="form-group col">
                                <asp:Label ID="lbl_gioitinh" runat="server" Text="Giới tính" CssClass="form-label" for="txt_gioitinh"></asp:Label>
                                 <asp:DropDownList ID="dd_theloai" runat="server" CssClass="form-control authentication-form">
                                    <asp:ListItem>Nam</asp:ListItem>
                                    <asp:ListItem>Nữ</asp:ListItem>
                                    <asp:ListItem>Khác</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng chọn giới tính" ControlToValidate="txt_tentaikhoan" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_matkhau" runat="server" Text="Mật Khẩu" CssClass="form-label" for="txt_matkhau"></asp:Label>
                            <asp:TextBox ID="txt_matkhau" runat="server" CssClass="form-control authentication-form" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng nhập mật khẩu" ControlToValidate="txt_matkhau" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                         </div>
                        <div class="row">
                          <div class="form-group col ">
                            <asp:Label ID="lbl_diachi" runat="server" Text="Địa chỉ" CssClass="form-label" for="txt_diachi"></asp:Label>
                            <asp:TextBox ID="txt_diachi" runat="server" CssClass="form-control authentication-form" TextMode="MultiLine"></asp:TextBox>
                           </div>
                          <div class="form-group col ">
                            <asp:Label ID="lbl_sodienthoai" runat="server" Text="Số điện thoại" CssClass="form-label" for="txt_sodienthoai"></asp:Label>
                            <asp:TextBox ID="txt_sodienthoai" runat="server" CssClass="form-control authentication-form" TextMode="Phone" min="1"></asp:TextBox>
                          </div>
                        </div>
                    </div>
                    <div class="btn-add">
                         <asp:Button Text="Thêm" CssClass="btn btn-outline-warning " runat="server" ValidationGroup="Themsanpham" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-2">
        <div class="modal__edit">
             <div class="Add-Form">
                <div class="Add-Form__Container container">
                    <div class="Add-Form__heading">
                        <h3>Sửa thông tin tài khoản</h3>
                        <button class="js-modal-close"><i class="far fa-times-circle"></i></button>
                    </div>
                     <div class="Add-Form__form">
                        <div class="row">
                            <div class="form-group col">
                                <asp:Label ID="Label1" runat="server" Text="Mã tài khoản" CssClass="form-label" for="txt_mataikhoan"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control authentication-form" Enabled="False"></asp:TextBox>
                            </div>
                            <div class="form-group col">
                                <asp:Label ID="Label6" runat="server" Text="Họ Tên" CssClass="form-label" for="txt_hoten"></asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                            </div>
                             <div class="form-group col">
                                <asp:Label ID="Label7" runat="server" Text="Ngày Sinh" CssClass="form-label" for="txt_ngaysinh"></asp:Label>
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control authentication-form" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                         <div class="row">
                            <div class="form-group col">
                                <asp:Label ID="Label2" runat="server" Text="Tên Tài Khoản" CssClass="form-label" for="txt_tentaikhoan"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                            
                            </div>
                              <div class="form-group col">
                                <asp:Label ID="Label8" runat="server" Text="Giới tính" CssClass="form-label" for="txt_gioitinh"></asp:Label>
                                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control authentication-form">
                                    <asp:ListItem>Nam</asp:ListItem>
                                    <asp:ListItem>Nữ</asp:ListItem>
                                    <asp:ListItem>Khác</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui lòng chọn giới tính" ControlToValidate="txt_tentaikhoan" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
                            </div>

                         </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Mật Khẩu" CssClass="form-label" for="txt_matkhau"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control authentication-form" TextMode="Password"></asp:TextBox>
                          </div>
                        <div class="row">
                          <div class="form-group col ">
                            <asp:Label ID="Label4" runat="server" Text="Địa chỉ" CssClass="form-label" for="txt_diachi"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control authentication-form" TextMode="MultiLine"></asp:TextBox>
                           </div>
                          <div class="form-group col ">
                            <asp:Label ID="Label5" runat="server" Text="Số điện thoại" CssClass="form-label" for="txt_sodienthoai"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control authentication-form" TextMode="Phone" min="1"></asp:TextBox>
                          </div>
                        </div>
                    </div>
                    <div class="btn-add">
                    <asp:Button Text="Sửa" CssClass="btn btn-outline-danger " runat="server" ValidationGroup="Themsanpham" />
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        var removeProduct = document.getElementsByClassName('delete');
        //Xóa items
        for (var i = 0; i < removeProduct.length; i++) {
            var button = removeProduct[i];
            button.addEventListener('click', removeCartItems)
        }

        function removeCartItems(event) {
            if (confirm('Bạn có muốn xóa tài khoản?')) {
                var buttonClicked = event.target;
                buttonClicked.parentElement.parentElement.parentElement.remove();
            } 
        }
    </script>
    <script>
        // Thêm sản phẩm 
        const addBtns = document.querySelector('#Product-management__newProduct');
        const modal1 = document.querySelector('.modal-1');
        const modal1Container = document.querySelector('.modal__add');
        const modalClose = document.querySelectorAll('.js-modal-close');
        // Thêm class open cho model
        function showAddProducts() {
            modal1.classList.add('open');
        }
        // Bỏ class open cho model
        function hideAddProducts() {
            modal1.classList.remove('open');
        }
        addBtns.addEventListener('click', showAddProducts);
        for (var i = 0; i < modalClose.length; i++) {
            var modalClosed = modalClose[i];
            modalClosed.addEventListener('click', hideAddProducts)
        }
        modal1.addEventListener('click', hideAddProducts)
        modal1Container.addEventListener('click', function (event) {
            event.stopPropagation()
        })
    </script>

    <script>
        //Sửa sản phẩm 
        const editBtns = document.querySelectorAll('.edit');
        const modal2 = document.querySelector('.modal-2');
        const modal2Container = document.querySelector('.modal__edit');
        // Thêm class open cho model
        function showAddProducts() {
            modal2.classList.add('open');
        }
        // Bỏ class open cho model
        function hideAddProducts() {
            modal2.classList.remove('open');
        }
        
        for (var i = 0; i < editBtns.length; i++) {
            var editBtn = editBtns[i];
            editBtn.addEventListener('click', showAddProducts)
        }
        
        modal2.addEventListener('click', hideAddProducts)
        modal2Container.addEventListener('click', function (event) {
            event.stopPropagation()
        })
    </script>
</asp:Content>

