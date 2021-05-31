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
    public partial class LineUsrCtrl : System.Web.UI.UserControl
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
            txtLine.Text = "";
            txtFloor.Text = "";          
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLine.Text = GridView1.SelectedRow.Cells[2].Text;
            txtFloor.Text = GridView1.SelectedRow.Cells[3].Text;

            lblTid.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtLine.Text != "" && txtFloor.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO LineInfo(LineName,FloorName) VALUES(@lineName,@floorName)", con);
                    cmd.Parameters.AddWithValue("@lineName", txtLine.Text);
                    cmd.Parameters.AddWithValue("@floorName", txtFloor.Text);
      
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
            if (txtLine.Text != "" && txtFloor.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE LineInfo SET LineName=@lineName,FloorName=@floorName  WHERE LineId=@lineId", con);
                    cmd.Parameters.AddWithValue("@lineId", lblTid.Text);
                  
                    cmd.Parameters.AddWithValue("@lineName", txtLine.Text);
                    cmd.Parameters.AddWithValue("@floorName", txtFloor.Text);
             
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
                cmd = new SqlCommand("DELETE FROM LineInfo WHERE LineId=@lineId", con);
                cmd.Parameters.AddWithValue("@lineId", lblTid.Text);

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