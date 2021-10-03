<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Views_Home_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="home">
        <div class="home__background">
            <div class="container">
                <div class="row">
                    <div class="home__container__slider">
                    <div class="home__container__slider--content">
                        <h1>Books</h1>
                        <h1>Library</h1>
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
    </div>

    <!--About--->
    <section class="Home__about" >
        <div class="container py-lg-5 py-md-4 py-2 Home__about__container">
        <div class="row">
            <div class="col-lg-4 align-self-center Home__about__container--inform">
                <span class="title-small mb-4 Home__about--title">CHÚNG TÔI LÀ AI?</span>
                <h3 class="title-big Home__about--brand "> Books Library </h3>
                <p class="mt-lg-4 mt-3 Home__about--inform"> Đem đến cho các bạn kho tri thức lớn nhất cả nước.
                    Luôn cung cấp đầy đủ thể loại sách mà bạn luôn tìm kiếm. </p>
                 <div class="Home__about--btn">
                    <div class="Home__btn__bgc"></div>
                    <a href="#">Xem thêm 
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                 </div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="Home__image col-md-4 col-6 mt-lg-0 mt-5">
                        <img src="../../assets/images/top1.PNG" alt="top1" class="Home__image--size">
                  
                    </div>
                    <div class="Home__image  col-md-4 col-6  mt-lg-0 mt-5">
                        <img src="../../assets/images/top2.PNG" alt="top2" class="Home__image--size">
                    </div>
                    <div class="Home__image  col-md-4 col-6  mt-lg-0 mt-md-5 ">
                        <img src="../../assets/images/top3.PNG" alt="top3" class="Home__image--size">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>

    <!--slider-->
    <!--features-->
    <section>
        <div class="features">
        <h5 class="features__small-title">LỰA CHỌN CỦA BẠN LÀ GÌ?</h5>
        <h1 class="features__big-title">Những sản phẩm được yêu thích</h1>
        <div id="carouselExampleControls" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators button-cicle">
                <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="container py-lg-5 py-md-4 py-2">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">

                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>

                        <!-------->
                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>

                        <!--------->
                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
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
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="container py-lg-5 py-md-4 py-2">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">

                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>

                        <!-------->
                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>

                        <!--------->
                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
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
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="container py-lg-5 py-md-4 py-2">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">

                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>

                        <!-------->
                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://newshop.vn/public/uploads/products/7393/img6.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>

                        <!--------->
                        <div class="col-md-4">
                        <div class="features__items ">
                            <div class="features__items-item">
                            <div class="card">
                                <div class="features__items-item-img">
                                <div class="card-header p-0 position-relative">
                                    <a href="#blog-single" class="zoom d-block">
                                        <img class="d-block features__items-item-img__size" src="https://bloganchoi.com/wp-content/uploads/2019/09/that-tich-khong-mua2.jpg">
                                    </a>
                                </div>
                                <div class="features__items-item-info">
                                    <a href="" class="features__items-item-info__title">5 centimet trên giây</a>
                                    <p class=" features__items-item-info__description ">5cm/s không chỉ là vận tốc của những cánh anh đào rơi, 
                                        mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, 
                                        đánh mất bao cảm xúc thiết tha nhất của tình yêu.</p>
                                    <div class="features__items-item-icon">
                                        <a href="" class="btn btn-outline-primary">Mua ngay</a>
                                        <div class="item-icons d-flex">
                                            <div class="item-icons-cost meta-item">
                                                <i class="fas fa-tags"></i>
                                                <span class="meta-value"> 150.000 </span>
                                            </div>
                                            <div class="item-icons-heart meta-item">
                                                <i class="fas fa-heart"></i>
                                                <span class="meta-value"> 24 </span>
                                            </div>
                                            <div class="item-icons-buy meta-item">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span class="meta-value"> 125 </span>
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
                </div>
              </div>
            </div>
        </div>
        </div>
        </div>
    </section>

</asp:Content>

