<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Views_Products_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="Contact d-flex align-items-center ">
        <div class="container">
            <div class="Contact__title">
                <h1>DETAIL</h1>
            </div> 
        </div>
    </section>

    <section class="Detail">
        <div class="container">
            <div class="row">
                <div class="Detail__container__image col-7">
                    <div class="row">
                        <div class="col-2 Detail__container__image--seclect">
                            <div class="img-items" data-id ="1">
                                <a href="#">
                                <img src="../../assets/images/5cm(1).jpg" />
                                </a>
                            </div>
                            <div class="img-items" data-id ="2">
                                <a href="#">
                                <img src="../../assets/images/5cm(4).jpg" />
                                </a>
                            </div>
                            <div class="img-items" data-id ="3">
                                <a href="#">
                                <img src="../../assets/images/5cm(5).png" />
                                </a>
                            </div>
                            <div class="img-items" data-id ="4">
                                <a href="#">
                                <img src="../../assets/images/5cm(6).png" />
                                </a>
                            </div>
                
                        </div>
                        <div class="col-10 Detail__container__image--banner">
                            <img src="../../assets/images/5cm(1).jpg" />
                            <img src="../../assets/images/5cm(4).jpg" />
                            <img src="../../assets/images/5cm(5).png" />
                            <img src="../../assets/images/5cm(6).png" />
                        </div>
                    </div>
                </div>

                <div class="col-5 Detail__container__content">
                      <h1 class = "Detail__title">5 cm trên giây</h1>
                      <div class="Detail__line"></div>
                      <h4 class = "Detail__genre">Tiểu thuyết, lãng mạn</h4>
                      <div class = "Detail__rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <span>4.7 (21)</span>
                      </div>

                      <div class = "Detail__price">
                        <p class = "Detail__price--old">Giá cũ: <span>200.000 đ</span></p>
                        <p class = "Detail__price--new">Giá khuyến mãi: <span>150.000 đ</span></p>
                      </div>

                      <div class = "Detail__description">
                        <h3 class="Detail__description--title">Thông Tin Mô Tả</h3>
                        <div class="Detail__description--detail">
                            <div class="Detail__description--detail__table">
                                <table class="table" style="max-width: 350px;">
                                    <tbody>
                                    <tr>
                                        <td><strong>Tác giả: </strong> </td>
                                        <td>Shinkai Makoto</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Nhà sản xuất:</strong></td>
                                        <td>Kim Đồng</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Tái bản:</strong></td>
                                        <td>2</td>
                                    </tr>
                                        <tr>
                                        <td><strong>Số trang:</strong></td>
                                        <td>1050</td>
                                    </tr>
                                    </tbody>
                                    </table>
                            </div>
                            <div class="Detail__description--detail__paragraph">
                                <p>“5 Centimet Trên Giây” là câu chuyện của những con người bên nhau trong những năm tháng tuổi trẻ, 
                                    cùng nhau kể những kỉ niệm đẹp tuổi học sinh. Thời gian trôi, mọi thứ đổi thay, ai cũng có guồng quay của riêng mình, 
                                    họ tạm quên nhau lao vào guồng quay đó. Rồi chợt 1 ngày bước qua nhau mà ko hề hay biết, 
                                    như cách mà cánh hoa anh đào rơi trên niềm vui thời niên thiếu.
                                    <br />
                                    “5 Centimet Trên Giây” xoay quanh cuộc đời của Takaki – Kun (Toono – Kun) từ những năm tiểu học cho tới khi trưởng thành. 
                                    Từng câu chuyện lần lượt là những dấu mốc quan trọng trong cuộc đời Takaki: kỷ niệm, lời hứa, cuộc chia tay và cả cuộc đời đẫm 
                                    nước mắt. Takaki luôn day dứt, luyến tiếc về một ký ức đã mãi xa vời…
                                </p>
                            </div>
                        </div>
                      </div>
                        
                      <div class = "Detail__purchase">
                        <asp:TextBox ID="txt_soluong" CssClass="txt_soluong" runat="server" TextMode="Number" min="1">1</asp:TextBox>
                        <asp:Button ID="btn_addcart" CssClass="btn_addcart btn" runat="server" Text="Thêm vào giỏ hàng" />
                        <asp:Button ID="btn_buynow" CssClass="btn_buy btn" runat="server" Text="Mua ngay" />
                      </div>

                </div>
            </div>
        </div>
    </section>

</asp:Content>

