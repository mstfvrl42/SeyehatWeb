using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace SeyehatWeb.Yönetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        DateTime bugun = DateTime.Now;
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblBlog(Baslik,Ozet,KategoriId,Resim,Detay,Tarih) values (@Baslik,@Ozet,@KategoriId,@Resim,@Detay,@Tarih)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", TxtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", Txtozet.Text.ToString());
            komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtdetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BlogEkle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/image/Blog/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "Lütfen jpeg,jpg veya png uzantılı resim seçin";
                }


            }
            else
                lblResim.Text = "Lütfen bir resim seçiniz...";
        }
    }
}