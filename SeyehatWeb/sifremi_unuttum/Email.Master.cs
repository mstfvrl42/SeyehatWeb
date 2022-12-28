using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SeyehatWeb.sifremi_unuttum
{
    public partial class Email : System.Web.UI.MasterPage
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblKullanici where  Mail=@Mail", baglanti);
            komut.Parameters.AddWithValue("@Mail",Txtemailtel.Text.ToString());            
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["Mail"].ToString();
                Response.Redirect("~/sifremi_unuttum/Default.aspx");
            }
            else
            {
                Label1.Text = "E posta hatalı yeni e posta gir yada hesap oluştur";
            }
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
        }
    }
}