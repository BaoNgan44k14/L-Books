<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/LayoutHome.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Views_Home_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="Contact d-flex align-items-center ">
        <div class="container">
            <div class="Contact__title">
                <h1>CONTACTS</h1>
            </div> 
        </div>
    </section>

    <div class="contact__container">
        <div class="container custom">
            <div class="contact__container">
                <div class="row">
                    <div class="col-12">
                        <div class="contact__container__form">
                            <div class="contact__container__form--title">
                                <h2>Phản hồi ý kiến của bạn</h2>
                            </div>
                            <div class="contact__form" id="txt_message">
                                <asp:TextBox ID="txt_name" runat="server" placeholder="Name" class="contact_form_name"></asp:TextBox>
                                <asp:TextBox ID="txt_email" runat="server" placeholder="E-mail" class="contact_form_email"></asp:TextBox>
                                <asp:TextBox ID="txt_subject" runat="server" placeholder="Subject" class="contact_form_subject"></asp:TextBox>
                                <asp:TextBox ID="txt_message" runat="server" placeholder="Message" TextMode="MultiLine" MaxLength="50" Rows="10" Columns="30"></asp:TextBox>
                                <div class="row">
                                    <div class="col-12 text-center ">
                                        <button class="form_submit_button">Gửi phản hồi
                                       </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

