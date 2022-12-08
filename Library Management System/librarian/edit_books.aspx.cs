﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library_Management_System.librarian
{
    public partial class edit_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\4th sem\Adv.programming\Programs\Library Management System\Library Management System\Library Management System\App_Data\lms.mdf;Integrated Security=True");
        int id;
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

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (IsPostBack) return;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books where id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                bookstitle.Text = dr["books_title"].ToString();
                booksimage.Text = dr["books_image"].ToString();
                bookspdf.Text = dr["books_pdf"].ToString();
                booksvideo.Text = dr["books_video"].ToString();
                authorname.Text = dr["books_author_name"].ToString();
                isbn.Text = dr["books_isbn"].ToString();
                qty.Text = dr["available_qty"].ToString();

            }

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string books_image_name = "";
            string books_pdf = "";
            string books_video = "";


            string path = "";
            string path2 = "";
            string path3 = "";

            

            if(f1.FileName.ToString()!="")
            {
                books_image_name = Class1.GetRandomPassword(10) + ".jpg";
                f1.SaveAs(Request.PhysicalApplicationPath + "/librarian/books_images/" + books_image_name.ToString());
                path = "books_images/" + books_image_name.ToString();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update books set books_title='"+ bookstitle.Text+ "',books_image='"+ path.ToString() +"',books_author_name='"+ authorname.Text +"', books_isbn='"+ isbn.Text +"',available_qty='"+ qty.Text +"' where id ="+ id +"";
                cmd.ExecuteNonQuery();
            }

            if (f2.FileName.ToString() != "")
            {
                books_pdf = Class1.GetRandomPassword(10) + ".pdf";
                f2.SaveAs(Request.PhysicalApplicationPath + "/librarian/books_pdf/" + books_pdf.ToString());
                path2 = "books_pdf/" + books_pdf.ToString();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update books set books_title='" + bookstitle.Text + "',books_pdf='" + path2.ToString() + "',books_author_name='" + authorname.Text + "', books_isbn='" + isbn.Text + "',available_qty='" + qty.Text + "' where id =" + id + "";
                cmd.ExecuteNonQuery();
            }

            if (f3.FileName.ToString() != "")
            {
                books_video = Class1.GetRandomPassword(10) + ".mp4";
                f3.SaveAs(Request.PhysicalApplicationPath + "/librarian/books_video/" + books_video.ToString());
                path3 = "books_video/" + books_video.ToString();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update books set books_title='" + bookstitle.Text + "',books_video='" + path3.ToString() + "',books_author_name='" + authorname.Text + "', books_isbn='" + isbn.Text + "',available_qty='" + qty.Text + "' where id =" + id + "";
                cmd.ExecuteNonQuery();
            }

            if(f1.FileName.ToString()=="" && f2.FileName.ToString() == "" && f3.FileName.ToString() == "")
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update books set books_title='" + bookstitle.Text + "',books_author_name='" + authorname.Text + "', books_isbn='" + isbn.Text + "',available_qty='" + qty.Text + "' where id =" + id + "";
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("display_all_books.aspx");
        }
    }
}