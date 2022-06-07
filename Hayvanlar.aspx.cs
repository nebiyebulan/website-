using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hayvanlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string islem = "";
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Hayvanid"];
            islem = Request.QueryString["islem"];
            //kategori listesi
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
            if (islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete From Tbl_Hayvanlar where Hayvanid=@p1", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        //hayvan listesi

        SqlCommand komut = new SqlCommand("Select * From Tbl_hayvanlar ", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

       
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Hayvanlar (hayvanad,hayvanbakimi,hayvanbilgileri,kategoriid)values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}