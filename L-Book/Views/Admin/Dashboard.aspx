<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminLayout.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Views_Admin_Dashboard" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpreadsheet.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSpreadsheet" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Dashboard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <section class="Dashboard-cards">
        <div class="cards">
            <div class="card-singer">
                <div>
                    <h1>54</h1>
                    <span>Tài khoản</span>
                </div>
                <div>
                    <i class="fas fa-users"></i>
                </div>
            </div>

            <div class="card-singer">
                <div>
                    <h1>102</h1>
                    <span>Đơn Hàng</span>
                </div>
                <div>
                    <i class="far fa-clipboard"></i>
                </div>
            </div>

            <div class="card-singer">
                <div>
                    <h1>200</h1>
                    <span>Sản Phẩm</span>
                </div>
                <div>
                    <i class="fas fa-boxes"></i>
                </div>
            </div>

            <div class="card-singer">
                <div>
                    <h1>2tr</h1>
                    <span>Tổng Doanh Thu</span>
                </div>
                <div>
                    <i class="fas fa-cash-register"></i>
                </div>
            </div>
        </div>
    </section>

    <section class="Dashboard-tables">
        <div class="Product-card container">
          <div class="row">
            <div class="col-8 Dashboard-table">
                <div class=" Product-table">
                    <div class="Product-table__header">
                        <h2>Sản Phẩm</h2>
                        <button>Xem thêm <i class="fas fa-angle-double-right"></i></button>
                    </div>
                    <div class="Product-table__body">
                    <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <th>Mã sách</th>
                                <th>Tên sách</th>
                                <th>Số sách đã bán</th>
                                <th>Số lượng tồn</th>
                                <th>Đơn giá (VNĐ)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>5cm trên giây</td>
                                <td>40</td>
                                <td>50</td>
                                <td>150.000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </div>
            </div>
            <div class="col-4 Dashboard-table">
                <div class="Account-table">
                    <div class="Account-table__header">
                        <h2>Tài khoản mới</h2>
                        <button>Xem <i class="fas fa-angle-double-right"></i></button>
                    </div>
                    <div class="Account-table__body">
                        <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <th>Tên đăng nhập</th>
                                <th>Mật khẩu</th>
                                <th>Ngày đăng ký</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Milen</td>
                                <td>123456</td>
                                <td>12/10/2021</td>
                            </tr>
                            <tr>
                                <td>Milen</td>
                                <td>123456</td>
                                <td>12/10/2021</td>
                            </tr>
                            <tr>
                                <td>Milen</td>
                                <td>123456</td>
                                <td>12/10/2021</td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
          </div>
        </div>
    </section>
</asp:Content>

