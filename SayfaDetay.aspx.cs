using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SayfaDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string hayvanid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        hayvanid = Request.QueryString["hayvanid"];
        SqlCommand komut = new SqlCommand("Select HayvanAd From tbl_Hayvanlar where hayvanid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", hayvanid);

        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label2.Text = dr[0].ToString();
 
        }
        bgl.baglanti().Close();

        //yorumları listele
        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorum where hayvanid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", hayvanid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yorum(yorumadsoyad,yorummail,yorumicerik,hayvanid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", hayvanid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}