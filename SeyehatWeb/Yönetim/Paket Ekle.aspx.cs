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
    public partial class Paket_Ekle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/image/" + ResimAd));
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
        protected void Button1_Click1(object sender, EventArgs e)
        {
          
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblTurPaket(adi,fiyat,sure,Lokasyon,Resim,Detay) values (@adi,@fiyat,@sure,@Lokasyon,@Resim,@Detay)", baglanti);
            komut.Parameters.AddWithValue("@adi", TxtAd.Text.ToString());
            komut.Parameters.AddWithValue("@fiyat", Convert.ToInt32(Txtfiyat.Text.ToString()));
            komut.Parameters.AddWithValue("@sure", Convert.ToInt32(Txtsüre.Text.ToString()));
            komut.Parameters.AddWithValue("@Lokasyon", TxtKonum.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtdetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Paket Ekle.aspx");
        }           
        }
    }
