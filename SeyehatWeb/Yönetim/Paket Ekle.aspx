<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Paket Ekle.aspx.cs" Inherits="SeyehatWeb.Yönetim.Paket_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Tur Paket Ekleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Temel Biçim Öğeleri</h4>
                  <p class="card-description">
                    Temel Biçim Öğeleri
                  </p>
                  <div class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Tur Adı</label>
                    
                        <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Tur Fiyat</label>
                      <asp:TextBox ID="Txtfiyat" runat="server" CssClass="form-control" placeholder="Tur Fiyatı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Tur Süresi</label>
                      <asp:TextBox ID="Txtsüre" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleSelectGender">Tur Konum</label>
                       <asp:TextBox ID="TxtKonum" runat="server" CssClass="form-control" placeholder="Tur Konumu"></asp:TextBox>
                      </div>
                    <div class="form-group">
                      <label>Tur Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                       <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                       <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                    </div>
                  
                    <div class="form-group">
                      <label for="exampleTextarea1">Tur Detayı</label>
                      
                       <asp:TextBox ID="txtdetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    </div>
                    
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2px" OnClick="Button1_Click1" />
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
