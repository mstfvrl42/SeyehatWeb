<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEkle.aspx.cs" Inherits="SeyehatWeb.Yönetim.BlogEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Tur Blog Ekle Sayfası</h3>
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
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblBlogKategori]" DeleteCommand="DELETE FROM [tblBlogKategori] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlogKategori] ([adi]) VALUES (@adi)" UpdateCommand="UPDATE [tblBlogKategori] SET [adi] = @adi WHERE [id] = @id">
                          <DeleteParameters>
                              <asp:Parameter Name="id" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="adi" Type="String" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="adi" Type="String" />
                              <asp:Parameter Name="id" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>

                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>
                    
                        <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Özet</label>
                      <asp:TextBox ID="Txtozet" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Özet"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Kategori</label>
                      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="adi" DataValueField="id" ></asp:DropDownList>
                    </div>
                   
                    <div class="form-group">
                      <label>Blog Resmi</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                       <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                    </div>
                  
                    <div class="form-group">
                      <label for="exampleTextarea1">Blog Detayı</label>
                      
                       <asp:TextBox ID="txtdetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                    </div>
                    
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2px" OnClick="Button1_Click" />
                      <asp:Label ID="lbltarih" runat="server" Text="Label"></asp:Label>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
