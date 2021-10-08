<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Views_Products_Detail" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <style>
      .swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
    </style>
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
                                <img src="../../assets/images/5cm(1).jpg" onclick="imgdetail(this)"/>
                            </div>
                            <div class="img-items" data-id ="2">              
                                <img src="../../assets/images/5cm(4).jpg" onclick="imgdetail(this)"/>
                            </div>
                            <div class="img-items" data-id ="3">                           
                                <img src="../../assets/images/5cm(5).png" onclick="imgdetail(this)"/>
                            </div>
                            <div class="img-items" data-id ="4">
                                <img src="../../assets/images/5cm(6).png" onclick="imgdetail(this)"/> 
                            </div>
                
                        </div>
                        <div class="col-10 Detail__container__image--banner">
                            <img src="../../assets/images/5cm(1).jpg" id="imageslide"/>
                        </div>
                    </div>
                </div>

                <div class="col-5 Detail__container__content">
                      <h1 class = "Detail__title">5 cm trên giây</h1>
                      <div class="Detail__line"></div>
                      <h4 class = "Detail__genre">Tiểu thuyết, lãng mạn</h4>
                      <div class = "Detail__rating">
                       <dx:ASPxRatingControl ID="ASPxRatingControl1" runat="server" Theme="SoftOrange"></dx:ASPxRatingControl>
                      <%--  <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>--%>
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

    <div class="Another__products">
        <h1 class="Another__products__title">Tham khảo thêm</h1>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="container"> 
        <div class="Another__products__container">

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                                <div class="card">
                                <div class="Product__offers__container--item__inform">
                                    <a href="#" class="zoom">
                                        <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>    
                                    <h4>5 centimet trên giây</h4>
                                    <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                                mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                                đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="Product__offers__container--item__price d-flex justify-content-between">
                                        <div class="Product__offers__container--item__icons">
                                            <div class="item__icons meta-item ">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value">150.000 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value">24 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value">125 </span>
                                            </div>
                                        </div>
                                        <div class="Product__offers__container--item__btn">
                                        <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                        <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                                <div class="card">
                                <div class="Product__offers__container--item__inform">
                                    <a href="#" class="zoom">
                                        <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>    
                                    <h4>5 centimet trên giây</h4>
                                    <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                                mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                                đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="Product__offers__container--item__price d-flex justify-content-between">
                                        <div class="Product__offers__container--item__icons">
                                            <div class="item__icons meta-item ">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value">150.000 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value">24 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value">125 </span>
                                            </div>
                                        </div>
                                        <div class="Product__offers__container--item__btn">
                                        <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                        <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                        <div class="card">
                        <div class="Product__offers__container--item__inform">
                            <a href="#" class="zoom">
                                <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                            </a>    
                            <h4>5 centimet trên giây</h4>
                            <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                            <div class="Product__offers__container--item__price d-flex justify-content-between">
                                <div class="Product__offers__container--item__icons">
                                    <div class="item__icons meta-item ">
                                        <i class="fas fa-tags"></i>
                                        <span class="meta-value">150.000 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-heart"></i>
                                        <span class="meta-value">24 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="meta-value">125 </span>
                                    </div>
                                </div>
                                <div class="Product__offers__container--item__btn">
                                <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                        <div class="card">
                        <div class="Product__offers__container--item__inform">
                            <a href="#" class="zoom">
                                <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                            </a>    
                            <h4>5 centimet trên giây</h4>
                            <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                            <div class="Product__offers__container--item__price d-flex justify-content-between">
                                <div class="Product__offers__container--item__icons">
                                    <div class="item__icons meta-item ">
                                        <i class="fas fa-tags"></i>
                                        <span class="meta-value">150.000 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-heart"></i>
                                        <span class="meta-value">24 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="meta-value">125 </span>
                                    </div>
                                </div>
                                <div class="Product__offers__container--item__btn">
                                <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                                <div class="card">
                                <div class="Product__offers__container--item__inform">
                                    <a href="#" class="zoom">
                                        <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>    
                                    <h4>5 centimet trên giây</h4>
                                    <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                                mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                                đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="Product__offers__container--item__price d-flex justify-content-between">
                                        <div class="Product__offers__container--item__icons">
                                            <div class="item__icons meta-item ">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value">150.000 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value">24 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value">125 </span>
                                            </div>
                                        </div>
                                        <div class="Product__offers__container--item__btn">
                                        <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                        <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                                <div class="card">
                                <div class="Product__offers__container--item__inform">
                                    <a href="#" class="zoom">
                                        <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>    
                                    <h4>5 centimet trên giây</h4>
                                    <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                                mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                                đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="Product__offers__container--item__price d-flex justify-content-between">
                                        <div class="Product__offers__container--item__icons">
                                            <div class="item__icons meta-item ">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value">150.000 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value">24 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value">125 </span>
                                            </div>
                                        </div>
                                        <div class="Product__offers__container--item__btn">
                                        <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                        <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                        <div class="card">
                        <div class="Product__offers__container--item__inform">
                            <a href="#" class="zoom">
                                <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                            </a>    
                            <h4>5 centimet trên giây</h4>
                            <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                            <div class="Product__offers__container--item__price d-flex justify-content-between">
                                <div class="Product__offers__container--item__icons">
                                    <div class="item__icons meta-item ">
                                        <i class="fas fa-tags"></i>
                                        <span class="meta-value">150.000 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-heart"></i>
                                        <span class="meta-value">24 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="meta-value">125 </span>
                                    </div>
                                </div>
                                <div class="Product__offers__container--item__btn">
                                <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                        <div class="card">
                        <div class="Product__offers__container--item__inform">
                            <a href="#" class="zoom">
                                <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                            </a>    
                            <h4>5 centimet trên giây</h4>
                            <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                            <div class="Product__offers__container--item__price d-flex justify-content-between">
                                <div class="Product__offers__container--item__icons">
                                    <div class="item__icons meta-item ">
                                        <i class="fas fa-tags"></i>
                                        <span class="meta-value">150.000 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-heart"></i>
                                        <span class="meta-value">24 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="meta-value">125 </span>
                                    </div>
                                </div>
                                <div class="Product__offers__container--item__btn">
                                <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                                <div class="card">
                                <div class="Product__offers__container--item__inform">
                                    <a href="#" class="zoom">
                                        <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>    
                                    <h4>5 centimet trên giây</h4>
                                    <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                                mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                                đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="Product__offers__container--item__price d-flex justify-content-between">
                                        <div class="Product__offers__container--item__icons">
                                            <div class="item__icons meta-item ">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value">150.000 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value">24 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value">125 </span>
                                            </div>
                                        </div>
                                        <div class="Product__offers__container--item__btn">
                                        <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                        <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                                <div class="card">
                                <div class="Product__offers__container--item__inform">
                                    <a href="#" class="zoom">
                                        <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>    
                                    <h4>5 centimet trên giây</h4>
                                    <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                                mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                                đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="Product__offers__container--item__price d-flex justify-content-between">
                                        <div class="Product__offers__container--item__icons">
                                            <div class="item__icons meta-item ">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value">150.000 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value">24 </span>
                                            </div>
                                            <div class="item__icons meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value">125 </span>
                                            </div>
                                        </div>
                                        <div class="Product__offers__container--item__btn">
                                        <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                        <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                        <div class="card">
                        <div class="Product__offers__container--item__inform">
                            <a href="#" class="zoom">
                                <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                            </a>    
                            <h4>5 centimet trên giây</h4>
                            <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                            <div class="Product__offers__container--item__price d-flex justify-content-between">
                                <div class="Product__offers__container--item__icons">
                                    <div class="item__icons meta-item ">
                                        <i class="fas fa-tags"></i>
                                        <span class="meta-value">150.000 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-heart"></i>
                                        <span class="meta-value">24 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="meta-value">125 </span>
                                    </div>
                                </div>
                                <div class="Product__offers__container--item__btn">
                                <a href="#" class="btn btn-outline-primary ">Mua</i></a>
                                <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        </div>
                        <div class="col-3 mb-3">
                            <div class="Product__offers__container--item">
                        <div class="card">
                        <div class="Product__offers__container--item__inform">
                            <a href="#" class="zoom">
                                <img class="Product__offers__container--item__img" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                            </a>    
                            <h4>5 centimet trên giây</h4>
                            <p>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                            <div class="Product__offers__container--item__price d-flex justify-content-between">
                                <div class="Product__offers__container--item__icons">
                                    <div class="item__icons meta-item ">
                                        <i class="fas fa-tags"></i>
                                        <span class="meta-value">150.000 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-heart"></i>
                                        <span class="meta-value">24 </span>
                                    </div>
                                    <div class="item__icons meta-item">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="meta-value">125 </span>
                                    </div>
                                </div>
                                <div class="Product__offers__container--item__btn">
                                <a href="#" class="btn btn-outline-primary ">Mua</a>
                                <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>     
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon " aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>   
        
    </div>

    <script>
        function imgdetail(smaillImg) {

            var fullImg = document.getElementById("imageslide");
            fullImg.src = smaillImg.src;
        }
    </script>
    
</asp:Content>

