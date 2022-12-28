using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyehatWeb.Yönetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
        }

        string id;
        protected void Button2_Click(object sender, EventArgs e)
        {
           
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            Txtemail.Text = tablo.Rows[0]["Mail"].ToString();
            Txttlf.Text = tablo.Rows[0]["Telefon"].ToString();
            Txtadres.Text = tablo.Rows[0]["Adres"].ToString();
            TxtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            Txtyoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            Txtinstagram.Text = tablo.Rows[0]["instagram"].ToString();
            Txtfacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            lbllogo.Text = tablo.Rows[0]["Logo"].ToString();
            txtdetay.Text = tablo.Rows[0]["SiteOzet"].ToString();
            id = tablo.Rows[0]["id"].ToString();
            baglanti.Close();
            Button1.Enabled = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Güncelleme işlemleri yapıldı. 
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail,Telefon=@Telefon,Adres=@Adres,Twitter=@Twitter,Youtube=@Youtube,instagram=@instagram,Facebook=@Facebook,Logo=@Logo,SiteOzet=@SiteOzet where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Mail", Txtemail.Text.ToString());
            komut.Parameters.AddWithValue("@Telefon", Txttlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", Txtadres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", TxtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", Txtyoutube.Text.ToString());
            komut.Parameters.AddWithValue("@instagram", Txtinstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", Txtfacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lbllogo.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtdetay.Text.ToString());
            komut.Parameters.AddWithValue("@id",Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }
    }
}