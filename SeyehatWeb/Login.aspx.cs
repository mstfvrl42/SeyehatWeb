using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SeyehatWeb
{
    public partial class Login : System.Web.UI.Page
    {
        
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblKullanici where  UserName=@UserName and Sifre=@Sifre", baglanti);
            komut.Parameters.AddWithValue("@UserName", txtKullanici.Text.ToString());
            komut.Parameters.AddWithValue("@Sifre",txtSifre.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();
            if(oku.Read())
            {
                Session["Kullanici"] = oku["UserName"].ToString();
                Response.Redirect("~/Yönetim/Default.aspx");
            }
            else
            {
                Label1.Text = "Kullanıcı adı ve/veya Şifre hatalı!!!";
            }
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Kaydol/Default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sifremi_unuttum/DefaultEmail.aspx");
        }
    }
}