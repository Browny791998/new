using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=ACER\\SQLEXPRESS;Initial Catalog=ProgrammingDB;Integrated Security=True");
        protected void btnInsert_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into StudentInfo_Tab values('"+int.Parse(txtID.Text)+"','"+txtName.Text+"','"+ddlAddress.SelectedValue+"','"+double.Parse(txtAge.Text)+"','"+txtContact.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully inserted');", true);
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update StudentInfo_Tab set StudentName='"+txtName.Text+ "',Address='"+ddlAddress.SelectedValue+ "',Age='"+double.Parse(txtAge.Text)+ "',Contact='"+txtContact.Text+ "' Where StudentID='"+int.Parse(txtID.Text)+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully updated');", true);
            LoadRecord();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete StudentInfo_Tab  Where StudentID='" + int.Parse(txtID.Text) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully deleted');", true);
            LoadRecord();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab Where StudentID='" + int.Parse(txtID.Text) + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab Where StudentID='" + int.Parse(txtID.Text) + "'", con);
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {
                txtName.Text = r.GetValue(1).ToString();
                ddlAddress.SelectedValue = r.GetValue(2).ToString();
                txtAge.Text = r.GetValue(3).ToString();
                txtContact.Text= r.GetValue(4).ToString();
            }
        }
    }
}