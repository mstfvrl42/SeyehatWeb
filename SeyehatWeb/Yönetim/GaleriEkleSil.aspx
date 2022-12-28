<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="SeyehatWeb.Yönetim.GaleriEkleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title"> Resim Galerisi İşlemleri Sayfası</h3>
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
                   
                      <h3>Galeri Resmi Yükleme Alanı</h3>
                       <div class="form-group">
                      <label for="exampleInputName1">Resim  Adı</label>
                           <asp:TextBox ID="TxtResim" CssClass="form-control" placeholder="Resim Adı" runat="server"></asp:TextBox>
                         
                    </div>
                       <div class="form-group">
                      <label>Galeri Resmi</label>                                       
                       <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control file-upload-info" />
                           <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                           <br />
                         <asp:Button ID="Button2" runat="server" Text="Resmi Yükle" CssClass="btn btn-gradient-primary me-2px" OnClick="Button2_Click" />
                    </div>
                      <div class="form-group">                        
                         <asp:Button ID="Button1" runat="server" Text="Kaydet"  CssClass="btn btn-gradient-primary me-2px" OnClick="Button1_Click" />
                          </div>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
