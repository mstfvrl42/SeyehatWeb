<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="SeyehatWeb.Yönetim.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kurumsal İşlemleri Sayfası</h3>
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
                      <label for="exampleInputName1">Başlık</label>
                      <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"  placeholder="Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Logo</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      
                       <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        
                    </div>
                  
                    <div class="form-group">
                      <label for="exampleTextarea1">Özet</label>
                         <asp:Label ID="lbllogo" runat="server" Text=""></asp:Label><br />
                       <asp:TextBox ID="txtozet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Özet"></asp:TextBox>
                    </div>
                     <div class="form-group">
                      <label for="exampleTextarea1">Detay</label>
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                       <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                    </div>
                     
                     <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary  me-2px" style="background-color:orange" OnClick="Button2_Click"  />
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary me-2px" style="background-color:blue" OnClick="Button1_Click"  />
                    
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
