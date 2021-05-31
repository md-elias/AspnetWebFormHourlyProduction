using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IndividualUserAccount.UserControl
{
    public partial class BuyerUsrCtrl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        public void CleanAllControl()
        {
            txtName.Text = "";
            chkIsActive.Checked = false;
          
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = GridView1.SelectedRow.Cells[2].Text;
           
            lblTid.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO BuyerInfo(BuyerName,IsActive) VALUES(@buyerName,@isActive)", con);
                    cmd.Parameters.AddWithValue("@buyerName", txtName.Text);
                    cmd.Parameters.AddWithValue("@isActive", chkIsActive.Checked);
                  

                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Values";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (chkIsActive.Checked && txtName.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE BuyerInfo SET BuyerName=@buyerName WHERE BuyerId=@buyerId)", con);
                    cmd.Parameters.AddWithValue("@buyerId", lblTid.Text);

                    cmd.Parameters.AddWithValue("@buyerName", txtName.Text);
                    //cmd.Parameters.AddWithValue("@isActive", chkIsActive.Checked);

                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Values";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("DELETE FROM BuyerInfo WHERE BuyerId=@buyerId", con);
                cmd.Parameters.AddWithValue("@buyerId", lblTid.Text);

                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            CleanAllControl();
        }
    }
}