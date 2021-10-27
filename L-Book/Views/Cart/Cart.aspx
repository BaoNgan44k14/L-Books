<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Views_Cart_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="Cart d-flex align-items-center ">
        <div class="container">
            <div class="Cart__title">
                <h1>Cart</h1>
            </div> 
        </div>
    </section>

    <section class="Cart__Products">
        <div class="container mt-5">
            <div class="Cart__Product__table">
                <div class="cart">
                    <div class="table-responsive">
                    <table class="table table-hover">
                        <thead class="Cart__Product__table__nav">
                            <tr class="Cart__Products__title">
                                <th scope="col">STT</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Đơn giá (VNĐ)</th>
                                <th scope="col">Tổng cộng (VNĐ)</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody class="Cart__Products__tabs">
                            <tr class="Cart__Products__tab">
                                <td>
                                    <h6 class="Cart__Product__tab--number">1</h6>
                                </td>
                                <td>
                                    <img src="../../assets/images/5cm(1).jpg" style="width: 150px;" />
                                </td>
                                <td>
                                    <h6>5cm trên giây</h6>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_soluong1" CssClass="Cart__Product__tab--counter" runat="server" TextMode="Number" min="1" max="10" value="1"></asp:TextBox>
                                </td>
                                <td >
                                    <h6 class="Cart__Product__tab--price">150.000</h6>
                                </td>
                                <td>
                                    <h6>150.000</h6>
                                </td>
                                <td>
                                    <button class="Cart__Product__tab--delete">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </td>
                            </tr>
                            <!----->
                            <tr class="Cart__Products__tab">
                                <td>
                                    <h6 class="Cart__Product__tab--number">1</h6>
                                </td>
                                <td>
                                    <img src="../../assets/images/5cm(1).jpg" style="width: 150px;" />
                                </td>
                                <td>
                                    <h6>5cm trên giây</h6>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" CssClass="Cart__Product__tab--counter" runat="server" TextMode="Number" min="1" max="10" value="1"></asp:TextBox>
                                </td>
                                <td>
                                    <h6 class="Cart__Product__tab--price">150.000</h6>
                                </td>
                                <td>
                                    <h6>150.000</h6>
                                </td>
                                <td>
                                    <button class="Cart__Product__tab--delete">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </td>
                            </tr>
                            <!----->
                            <tr class="Cart__Products__tab">
                                <td>
                                    <h6 class="Cart__Product__tab--number">1</h6>
                                </td>
                                <td>
                                    <img src="../../assets/images/5cm(1).jpg" style="width: 150px;" />
                                </td>
                                <td>
                                    <h6>5cm trên giây</h6>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" CssClass="Cart__Product__tab--counter" runat="server" TextMode="Number" min="1" max="10" value="1"></asp:TextBox>
                                </td>
                                <td>
                                    <h6 class="Cart__Product__tab--price">150.000</h6>
                                </td>
                                <td>
                                    <h6>150.000</h6>
                                </td>
                                <td>
                                    <button class="Cart__Product__tab--delete">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                   </table>
                   </div>
               </div>
            </div>
            <div class="row d-flex justify-content-between my-5">
            <div class="col-4">
                <div class="Cart__Products__user--infor">
                    <h5><i class="fas fa-truck"></i>Thông tin giao hàng</h5>
                    <ul>
                        <button class="Cart__Products__user__btn--edit"><i class="far fa-edit"></i></button>
                        <li class="user__name">
                            <span>Họ Tên:</span>
                            <span>Nguyễn Thị Bảo Ngân</span>
                        </li>
                        <li class="user__phone">
                            <span>Số điện thoại:</span>
                            <span>0935580372</span>
                        </li>
                        <li class="user__address">
                            <span>Địa chỉ:</span>
                            <span>156 Thái Phiên <br />
                            Thành phố Huế - Tỉnh Thừa Thiên Huế
                            </span>
                        </li>
                        
                    </ul>
                   <%-- <ul>
                        <asp:TextBox ID="Txt__informCart" runat="server" TextMode="MultiLine" CssClass="Cart__Products__inform--edit"></asp:TextBox>
                        <div class="d-flex justify-content-end">
                        <ASPxButton ID="ASPxButton1" runat="server" Text="Đồng Ý" CssClass="Cart__Products__inform--edit__btn"></ASPxButton>
                        </div>
                    </ul>--%>
                </div>
            </div>

            <div class="col-4">
                <div class="Cart__Products__checkout">
                    <ul>
                        <li class="subtotal">Tổng sản phẩm
                            <span class="subtotal-quality"></span>
                        </li>
                        <li class="cart-total">Tổng Tiền
                        <span class="cart-total-price"></span></li>
                    </ul>
                    <a href="#"class="proceed-btn">Thanh Toán</a>
                </div>
            </div>
            </div>
        </div>
    </section>

    <script>
        //if (document.readyState == 'loading') {
        //    document.addEventListener('DOMContentLoaded', ready)
        //} else {
        //    ready()
        //}

      
        //Xóa items
        var removeProduct = document.getElementsByClassName('Cart__Product__tab--delete');
        for (var i = 0; i < removeProduct.length; i++) {
            var button = removeProduct[i];
            button.addEventListener('click', removeCartItems)
        }

        function removeCartItems(event) {
            var buttonClicked = event.target;
            buttonClicked.parentElement.parentElement.parentElement.remove();
            updateCartTotal();
        }

        //function updateCartTotal() {
        //    var cartItemContainer = document.getElementsByClassName('Cart__Products__tabs')[0]
        //    /*console.log(cartItemContainer)*/
        //    var cartRows = cartItemContainer.getElementsByClassName('Cart__Products__tab')
        //    /*console.log(cartRows)*/
        //    for (var i = 0; i < removeCartItems.length; i++) {
        //        //đặt biến tổng tiền
        //        var totalPrice = 0
        //        //đặt biến tổng sản phẩm
        //        var totalNumber = 0
        //        //lấy value của i
        //        var cartRow = cartRows[i]
        //        // lấy element của Cart__Product__tab--price
        //        var cartPriceElement = cartRow.getElementsByClassName('Cart__Product__tab--price')[0]
        //        // lấy text trong element Cart__Product__tab--price
        //        var price = parseFloat(cartPriceElement.innerText)
        //        // lấy element của Cart__Product__tab--counter
        //        var cartCounterElement = cartRow.getElementsByClassName('Cart__Product__tab--counter')[0]
        //        // lấy số lượng trong counter
        //        var counter = cartCounterElement.value
        //        // lấy element của Cart__Product__tab--number
        //        var cartNumberElement = cartRow.getElementsByClassName('Cart__Product__tab--number')[0]
        //        var numberProduct = cartNumberElement.innerText
        //        console.log(price, counter, numberProduct)
        //        totalPrice = totalPrice + (price * counter)
        //        totalNumber = totalNumber + numberProduct
                
        //    }
        //    // lấy element của cart-total-price và gán tổng tiền cho nó khi có sự thay đổi
        //    document.getElementsByClassName('cart-total-price')[0].innerText = totalPrice + '.000 VNĐ';
        //    document.getElementsByClassName('subtotal-quality')[0].innerText = totalNumber;
        //}



    </script>


</asp:Content>

