using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library_Management_System.student
{
    public partial class student_display_all_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\4th sem\Adv.programming\Programs\Library Management System\Library Management System\Library Management System\App_Data\lms.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if(Session["student"] == null)
            {
                Response.Redirect("student_login.aspx");
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
            if (value == "")
            {
                return "Not Available";
            }
            else
            {
                value = "../librarian/" + value.ToString();
                return "<a href='"+ value.ToString() +"' style='color:blue'>View video</a>";
            }
        }

        public string checkpdf(object myvalue1, object id1)
        {
            if (myvalue1 == "")
            {
                return "Not Available";
            }
            else
            {
                myvalue1 = "../librarian/" + myvalue1.ToString();
                return "<a href='"+ myvalue1.ToString() + "' style='color:blue'>View PDF</a>";
            }
        }
    }
}