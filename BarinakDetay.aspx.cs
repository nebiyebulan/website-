using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class BarinakDetay : System.Web.UI.Page
{
    sqlsinif snf = new sqlsinif();
    string ilid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        ilid = Request.QueryString["İlid"];
        SqlCommand komut = new SqlCommand("Select * From Tbl_Barinak where ilid=@p1", snf.baglanti());
        komut.Parameters.AddWithValue("@p1", ilid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}