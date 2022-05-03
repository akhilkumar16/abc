using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["hospitalbillConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            try
            {
                using (con)
                {
                    SqlCommand com = new SqlCommand("sp_Add", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@billdate", BillDate.Text);
                    com.Parameters.AddWithValue("@patient", PatientName.Text);
                    com.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                    com.Parameters.AddWithValue("birthday", birthday.Text);
                    com.Parameters.AddWithValue("Address", Address.Text);
                    com.Parameters.AddWithValue("EmailId", Emailid.Text);
                    com.Parameters.AddWithValue("mobile", Mobile.Text);
                    com.Parameters.AddWithValue("investigation", investigation.Text);
                    com.Parameters.AddWithValue("fee", Fee.Text);
                    con.Open();
                    var datareader = com.ExecuteReader();
                    if (datareader != null)
                    {
                        Application["dataset"] = datareader;
                    }
                    else
                    {
                    }
                    con.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            try
            {
                using (con)
                {
                    SqlCommand com = new SqlCommand("sp_Add", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@billdate", BillDate.Text);
                    com.Parameters.AddWithValue("@patient", PatientName.Text);
                    com.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                    com.Parameters.AddWithValue("birthday", birthday.Text);
                    com.Parameters.AddWithValue("Address", Address.Text);
                    com.Parameters.AddWithValue("EmailId", Emailid.Text);
                    com.Parameters.AddWithValue("mobile", Mobile.Text);
                    com.Parameters.AddWithValue("investigation", investigation.Text);
                    com.Parameters.AddWithValue("fee", Fee.Text);
                    con.Open();
                    var datareader = com.ExecuteReader();
                    if (datareader != null)
                    {
                        Application["dataset"] = datareader;
                    }
                    else
                    {
                    }
                    con.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}