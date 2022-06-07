using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class BilgiPaylas : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnBilgiPaylas_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_BilgiPaylas(BilgiAd,Bilgiicerik,BilgiSahip,BilgiSahipMail) values(@t1,@t2,@t3,@t4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TxtBilgiAd.Text);
        komut.Parameters.AddWithValue("@t2", TxtBilgiİcerik.Text);
        komut.Parameters.AddWithValue("@t3", TxtBilgiSahip.Text);
        komut.Parameters.AddWithValue("@t4", TxtMail.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Bilginiz Alınmıştır.");
    }
}