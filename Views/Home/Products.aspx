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
        <div class="container Product__catalogue--container">
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

    <div class="Product__offers">
        <div class="Product__offers__container">
            <div class="container">
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
                                    <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></a>
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
                                    <a href="#" class="btn btn-primary "><i class="fas fa-cart-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                <div class="col-12">
                    <ul class="Product__offers__pagination">
                        <li><a href="#"><i class="fas fa-chevron-left"></i></a></li>
                        <li class="Product__offers__pagination--item active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">15</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

