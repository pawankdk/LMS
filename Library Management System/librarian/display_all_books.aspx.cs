using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library_Management_System.librarian
{
    public partial class display_all_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\4th sem\Adv.programming\Programs\Library Management System\Library Management System\Library Management System\App_Data\lms.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["librarian"] == null)
            {
                Response.Redirect("login.aspx");
            }

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();
        }



        public string checkvideo(object value, object id)
        {
            if(value== "")
            {
                return value.ToString();
            }
            else
            {
                return "<a href='delete_files.aspx?id=" + id + "' style='color:red'>Delete video</a>";
            }
        }

        public string checkpdf(object myvalue1, object id1)
        {
            if (myvalue1== "")
            {
                return myvalue1.ToString();
            }
            else
            {
                return "<a href='delete_files.aspx?id1=" + id1 + "' style='color:red'>Delete PDF</a>";
            }
        }


    }
}