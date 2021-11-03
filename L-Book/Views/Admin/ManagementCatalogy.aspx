<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminLayout.master" AutoEventWireup="true" CodeFile="ManagementCatalogy.aspx.cs" Inherits="Views_Admin_ManagementCatalogy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    quản lý danh mục
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container">
        <div class="row">
          <div class="Product-management">
            <div class=" Product-table">
                <div class="Product-table__header">
                    <h2></h2>
                    <button id="Product-management__newProduct" type="button">Thêm danh mục <i class="fas fa-plus"></i></button>
                </div>
                <div class="table__body">
                    <div class="table-wrapper">
                        <div class="table-responsive">
                            <asp:GridView ID="Grv_danhmuc" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                                    <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                                    <asp:TemplateField HeaderText="Tác Vụ">
                                          <ItemTemplate>
                                            <button class="edit" type="button"><i class="fas fa-pen"></i></button>
                                            <button class="delete"><i class="far fa-trash-alt"></i></button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryBookConnectionString2 %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
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
                        <h3>Thêm danh mục</h3>
                        <button class="js-modal-close" ><i class="far fa-times-circle"></i></button>
                    </div>
                    <div class="Add-Form__form">
                            <div class="form-group">
                                <asp:Label ID="lbl_madanhmuc" runat="server" Text="Mã Danh Mục" CssClass="form-label" for="txt_madanhmuc"></asp:Label>
                                <asp:TextBox ID="txt_madanhmuc" runat="server" CssClass="form-control authentication-form" Enabled="False"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lbl_tendanhmuc" runat="server" Text="Tên Danh Mục" CssClass="form-label" for="txt_tendanhmuc"></asp:Label>
                                <asp:TextBox ID="txt_tendanhmuc" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                            </div>
                            <div class="form-group ">
                                <asp:Label ID="lbl_theloaidanhmuc" runat="server" Text="Thể Loại" CssClass="form-label" for="ddl_theloaidanhmuc"></asp:Label>
                                 <asp:DropDownList ID="ddl_theloaidanhmuc" runat="server" CssClass="form-control authentication-form">
                                    <asp:ListItem>Truyện, Tiểu Thuyết</asp:ListItem>
                                    <asp:ListItem>Sách thiếu nhi</asp:ListItem>
                                    <asp:ListItem>Tâm Lý</asp:ListItem>
                                    <asp:ListItem>Chính trị - Pháp luật</asp:ListItem>
                                    <asp:ListItem>Khoa học công nghệ</asp:ListItem>
                                    <asp:ListItem>Xã hội - lịch sử</asp:ListItem>
                                    <asp:ListItem>Giáo trình</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng chọn giới tính" ControlToValidate="ddl_theloaidanhmuc" CssClass="form-message" ValidationGroup="Themsanpham"></asp:RequiredFieldValidator>
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
                        <h3>Sửa thông tin danh mục</h3>
                        <button class="js-modal-close"><i class="far fa-times-circle"></i></button>
                    </div>
                    <div class="Add-Form__form">
                        <div class="form-group">
                        <asp:Label ID="lbl_madanhmuc2" runat="server" Text="Mã Danh Mục" CssClass="form-label" for="txt_madanhmuc2"></asp:Label>
                        <asp:TextBox ID="txt_madanhmuc2" runat="server" CssClass="form-control authentication-form" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="form-group">
                        <asp:Label ID="lbl_tendanhmuc2" runat="server" Text="Tên Danh Mục" CssClass="form-label" for="txt_tendanhmuc2"></asp:Label>
                        <asp:TextBox ID="txt_tendanhmuc2" runat="server" CssClass="form-control authentication-form"></asp:TextBox>
                    </div>
                        <div class="form-group ">
                        <asp:Label ID="lbl_theloaidanhmuc2" runat="server" Text="Thể Loại" CssClass="form-label" for="ddl_theloaidanhmuc2"></asp:Label>
                            <asp:DropDownList ID="ddl_theloaidanhmuc2" runat="server" CssClass="form-control authentication-form">
                            <asp:ListItem>Truyện, Tiểu Thuyết</asp:ListItem>
                            <asp:ListItem>Sách thiếu nhi</asp:ListItem>
                            <asp:ListItem>Tâm Lý</asp:ListItem>
                            <asp:ListItem>Chính trị - Pháp luật</asp:ListItem>
                            <asp:ListItem>Khoa học công nghệ</asp:ListItem>
                            <asp:ListItem>Xã hội - lịch sử</asp:ListItem>
                            <asp:ListItem>Giáo trình</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                     </div>
                    <div class="btn-add pt-3">
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
            if (confirm('Bạn có muốn xóa danh mục?')) {
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

