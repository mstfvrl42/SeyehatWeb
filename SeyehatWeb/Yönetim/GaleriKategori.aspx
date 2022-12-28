<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="SeyehatWeb.Yönetim.GaleriKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title"> Galeri Resim İşlemleri Kategori Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div runat="server">
     <div class="col-12 grid-margin stretch-card">
    <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Temel Biçim Öğeleri</h4>
                  <p class="card-description">
                    Temel Biçim Öğeleri
                  </p>
                  <div class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                    
                        <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                    </div>
                    
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2px" OnClick="Button1_Click" />
                      </div>
                      </div>
              </div>
         </div>
      <br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
</asp:Content>
