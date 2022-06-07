using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];
        if (Page.IsPostBack == false)
        {


            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,HayvanAd From tbl_yorum inner join tbl_hayvanlar on tbl_yorum.hayvanid=tbl_hayvanlar.hayvanid where yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                Txtİcerik.Text = dr[2].ToString();
                Txthayvan.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }
        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_yorum set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txtİcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
