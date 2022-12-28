<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="SeyehatWeb.Yönetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları İşlem Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Temel Biçim Öğeleri</h4>
                  <p class="card-description">
                    Temel Biçim Öğeleri
                  </p>
                  <div class="forms-sample" >
                    <div class="form-group">
                      <label for="exampleInputName1">E-Mail</label>
                    
                        <asp:TextBox ID="Txtemail" runat="server" CssClass="form-control" type="email" placeholder="@gmail.com"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Telefon</label>
                      <asp:TextBox ID="Txttlf" runat="server" CssClass="form-control"  placeholder="Telefon"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Adres</label>
                       <asp:TextBox ID="Txtadres" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Adres"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Twitter</label>
                      <asp:TextBox ID="TxtTwitter" runat="server" CssClass="form-control"  placeholder="Twitter"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Youtube</label>
                      <asp:TextBox ID="Txtyoutube" runat="server" CssClass="form-control"  placeholder="Youtube"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">İnstagram</label>
                      <asp:TextBox ID="Txtinstagram" runat="server" CssClass="form-control"  placeholder="İnstagram"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Facebook</label>
                      <asp:TextBox ID="Txtfacebook" runat="server" CssClass="form-control"  placeholder="Facebook"></asp:TextBox>
                    </div>
                   
                    <div class="form-group">
                      <label>Logo</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      
                       <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        
                    </div>
                  
                    <div class="form-group">
                      <label for="exampleTextarea1">Site Açıklama</label>
                         <asp:Label ID="lbllogo" runat="server" Text=""></asp:Label><br />
                       <asp:TextBox ID="txtdetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Sie Açıklama"></asp:TextBox>
                    </div>
                     
                     <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary  me-2px" style="background-color:red" OnClick="Button2_Click"  />
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary me-2px" style="background-color:greenyellow" OnClick="Button1_Click"  />
                    
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
