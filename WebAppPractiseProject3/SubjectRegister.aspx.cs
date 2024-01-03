using System;
using System.Data.SqlClient;

namespace WebAppPractiseProject3
{
    public partial class SubjectRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
        }
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            SqlConnection con = new SqlConnection("server=NAVEEN-BOOK-8C9;database=PracticeProject1;;trusted_connection=true;");
            try
            {

                SqlCommand cmd = new SqlCommand("set identity_insert Subjects on;insert into Subjects(SubjectId,SubjectName,TeacherName) values(@SubjectId,@SubjectName,@TeacherName) ", con);
                cmd.Parameters.AddWithValue("@SubjectId", int.Parse(subjectid.Text));
                cmd.Parameters.AddWithValue("@SubjectName", subjectname.Text);
                cmd.Parameters.AddWithValue("@TeacherName", teachername.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                LblMsg.Text = "Subjects Record Inserted!!!";


            }
            catch (Exception ex)
            {
                LblMsg.Text += "Error!!!" + ex.Message;
            }
            finally { con.Close(); }
        }
    }
}