<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="SeyehatWeb.Yönetim.BlogKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Tur Blog Kategori Ekle/Sil  Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div  runat="server">
    <div class="col-12 grid-margin stretch-card">
                <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Temel Biçim Öğeleri</h4>
                  <p class="card-description">
                    Temel Biçim Öğeleri
                  </p>
                  
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                    
                        <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                    </div>
                    
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2px" OnClick="Button1_Click1" />
                  
                </div>
              </div>
            </div>
        <br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" DeleteCommand="DELETE FROM [tblBlogKategori] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlogKategori] ([adi]) VALUES (@adi)" SelectCommand="SELECT * FROM [tblBlogKategori]" UpdateCommand="UPDATE [tblBlogKategori] SET [adi] = @adi WHERE [id] = @id">

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
            <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                </Columns>
        </asp:GridView>
            </div>
         
</asp:Content>
