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
    public partial class Sifremi_unuttum : System.Web.UI.MasterPage
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string id;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand guncelle = new SqlCommand("update tblKullanici set Sifre=@Sifre where UserId=@UserId ", baglanti);
            guncelle.Parameters.AddWithValue("@Sifre",Txtsifre.Text.ToString());
            guncelle.Parameters.AddWithValue("@UserId", Convert.ToInt32(id));
            guncelle.ExecuteNonQuery();
            
          

               
          
          
        }
    }
}