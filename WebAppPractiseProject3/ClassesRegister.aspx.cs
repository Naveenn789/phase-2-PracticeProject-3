using System;
using System.Data.SqlClient;

namespace WebAppPractiseProject3
{
    public partial class ClassesRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            SqlConnection con = new SqlConnection("server=NAVEEN-BOOK-8C9;database=PracticeProject1;;trusted_connection=true;");
            try
            {
                SqlCommand cmd = new SqlCommand("set identity_insert Classes on;insert into Classes(ClassId,ClassName,ClassFloor) values(@ClassId,@ClassName,@ClassFloor) ", con);
                cmd.Parameters.AddWithValue("@ClassId", int.Parse(ClassId.Text));
                cmd.Parameters.AddWithValue("@ClassName", ClassName.Text);
                cmd.Parameters.AddWithValue("@ClassFloor", int.Parse(ClassId.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                LblMsg.Text = "Class Record Inserted!!!";


            }
            catch (Exception ex)
            {
                LblMsg.Text += "Error!!!" + ex.Message;
            }
            finally { con.Close(); }
        }
    }
}