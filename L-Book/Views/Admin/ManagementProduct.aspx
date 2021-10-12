<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminLayout.master" AutoEventWireup="true" CodeFile="ManagementProduct.aspx.cs" Inherits="Views_Admin_ManagementProduct" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Products
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <div class="container">
        <div class="row">
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
                            <img src="#" alt="Alternate Text" /></td>
                        <td>150.000</td>
                        <td >
                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                        </td>
                        <td>40</td>
                        <td>40</td>
                        <td>
                            <button><i class="fas fa-pen"></i></button>
                            <button><i class="far fa-trash-alt"></i></button>
                        </td>
                    </tr>
                    <tr class="">
                        <td>1</td>
                        <td>5cm trên giây</td>
                        <td>
                            <img src="#" alt="Alternate Text" /></td>
                        <td>150.000</td>
                        <td >
                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                        </td>
                        <td>40</td>
                        <td>40</td>
                        <td>
                            <button><i class="fas fa-pen"></i></button>
                            <button><i class="far fa-trash-alt"></i></button>

                        </td>
                    </tr>
                    <tr class="">
                        <td>1</td>
                        <td>5cm trên giây</td>
                        <td>
                            <img src="#" alt="Alternate Text" /></td>
                        <td>150.000</td>
                        <td >
                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                        </td>
                        <td>40</td>
                        <td>40</td>
                        <td>
                            <button><i class="fas fa-pen"></i></button>
                            <button><i class="far fa-trash-alt"></i></button>
                        </td>
                    </tr>
                    <tr class="">
                        <td>1</td>
                        <td>5cm trên giây</td>
                        <td>
                            <img src="#" alt="Alternate Text" /></td>
                        <td>150.000</td>
                        <td >
                            <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                        </td>
                        <td>40</td>
                        <td>40</td>
                        <td>
                            <button><i class="fas fa-pen"></i></button>
                            <button><i class="far fa-trash-alt"></i></button>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="pagination">
                  

                </div>
            </div>
            </div>
        </div>
        </div>
    </div>

</asp:Content>

