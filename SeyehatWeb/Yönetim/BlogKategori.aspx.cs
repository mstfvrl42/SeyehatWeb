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
    public partial class BlogKategori : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblBlogKategori(adi) values (@adi)", baglanti);
            komut.Parameters.AddWithValue("@adi", TxtAd.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BlogKategori.aspx");
        }
    }
}