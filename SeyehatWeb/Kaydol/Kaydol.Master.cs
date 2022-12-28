using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SeyehatWeb.Kaydol
{
    public partial class Kaydol : System.Web.UI.MasterPage
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Insert into tblKullanici(UserName,Sifre,Ad,Soyad,Mail) values('" + Txtkullanici.Text + "','" + Txtsifre.Text + "','" + Txtad.Text + "','" + TxtSoyad.Text + "','" + Txtemailtel.Text + "')", baglanti);
            komut.ExecuteNonQuery();

           if(Txtkullanici.Text=="" && String.IsNullOrEmpty(Txtsifre.Text) && String.IsNullOrEmpty(Txtemailtel.Text))
            {
                Label1.Text = "Lütfen E-mail,Şifre ve Kullanıcı Adını boş bırakmayınız";
            }
           else
            {
                Label1.Text = "İşlem başarıyla tamamalandı";
            }

            

            baglanti.Close();
            baglanti.Dispose();
        }
    }
}