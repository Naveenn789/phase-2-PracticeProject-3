using System;
using System.Data.SqlClient;

namespace WebAppPractiseProject3
{
    public partial class StudentDisplay : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("set identity_insert Student on;insert into Student(RollNo,StudentName,ClassId,SubjectId) values(@StudentRollNo,@StudentName,@ClassId,@SubjectId) ", con);
                cmd.Parameters.AddWithValue("@StudentName", TxtStdntName.Text);
                cmd.Parameters.AddWithValue("@StudentRollNo", int.Parse(TxtStdntRollno.Text));
                cmd.Parameters.AddWithValue("@ClassId", int.Parse(TxtClassId.Text));
                cmd.Parameters.AddWithValue("@SubjectId", int.Parse(TxtSubjectId.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                LblMsg.Text = "Student Record Inserted!!!";


            }
            catch (Exception ex)
            {
                LblMsg.Text += "Error!!!" + ex.Message;
            }
            finally { con.Close(); }
        }
    }
}