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
    public partial class OrderDetailUsrCtrl : System.Web.UI.UserControl
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
            txtPO.Text = "";
            txtStyle.Text = "";
            txtItem.Text = "";
            txtColor.Text = "";
        

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlBuyer.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
            txtPO.Text = GridView1.SelectedRow.Cells[3].Text;
            txtStyle.Text = GridView1.SelectedRow.Cells[4].Text;
            txtItem.Text = GridView1.SelectedRow.Cells[5].Text;
            txtColor.Text = GridView1.SelectedRow.Cells[5].Text;



            lblTid.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtPO.Text != "" && txtItem.Text != "" && txtStyle.Text != "" && txtColor.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO OrderInfo(BuyerId,PoNo,Style,Item,Color) VALUES(@buyerId,@poNo,@style,@item,@color)", con);
                    cmd.Parameters.AddWithValue("@buyerId", ddlBuyer.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@poNo", txtPO.Text);
                    cmd.Parameters.AddWithValue("@style", txtStyle.Text);
                    cmd.Parameters.AddWithValue("@item", txtItem.Text);
                    cmd.Parameters.AddWithValue("@color", txtColor.Text);


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
            if (txtPO.Text != "" && txtItem.Text != "" && txtStyle.Text != "" && txtColor.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE OrderInfo SET BuyerId=@buyerId,PoNo=@poNo,Style=@style,Item=@item,Color=@color  WHERE OrderId=@orderId", con);
                    cmd.Parameters.AddWithValue("@orderId", lblTid.Text);
                    cmd.Parameters.AddWithValue("@buyerId", ddlBuyer.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@poNo", txtPO.Text);
                    cmd.Parameters.AddWithValue("@style", txtStyle.Text);
                    cmd.Parameters.AddWithValue("@item", txtItem.Text);
                    cmd.Parameters.AddWithValue("@color", txtColor.Text);


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
                cmd = new SqlCommand("DELETE FROM OrderInfo WHERE OrderId=@orderId", con);
                cmd.Parameters.AddWithValue("@orderId", lblTid.Text);

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