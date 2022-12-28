<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Paketler.aspx.cs" Inherits="SeyehatWeb.Paketler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Paketlerimiz</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
    <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>ÖNE ÇIKAN TUR PAKETLERİ</span>
                            <h2>Favori Yerler</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <% // SQL işlemleri yapıldı %>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblTurPaket]"></asp:SqlDataSource>
                    <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src='image/<%# Eval("Resim") %>' alt='<%# Eval("adi") %>'>
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>8.0 Superb</span> </span>
                                    <h3><a href="#"><%# Eval("adi") %></a></h3>
                                    <p class="dolor"><%# Eval("fiyat") %> <span>/ Per Person</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i><%# Eval("sure") %></li>
                                        <li><i class="fas fa-map-marker-alt"></i><%# Eval("Lokasyon") %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>

                   
                    
                    </div>
                    </form>
</asp:Content>
    
