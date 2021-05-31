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
    public partial class ProductionUsrCtrl : System.Web.UI.UserControl
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
            txtHour.Text = "";
            txtInspQty.Text = "";
            txtPassQty.Text = "";
            txtDefQty.Text = "";
            txtProDate.Text = "";


        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlOrder.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
            ddlLine.SelectedValue = GridView1.SelectedRow.Cells[3].Text;

            txtHour.Text = GridView1.SelectedRow.Cells[4].Text;
            txtInspQty.Text = GridView1.SelectedRow.Cells[5].Text;
            txtPassQty.Text = GridView1.SelectedRow.Cells[6].Text;
            txtDefQty.Text = GridView1.SelectedRow.Cells[7].Text;
            txtProDate.Text = GridView1.SelectedRow.Cells[8].Text;



            lblTid.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        //protected void btnAdd_Click(object sender, EventArgs e)
        //{
        //    if (txtHour.Text != "" && txtInspQty.Text != "" && txtPassQty.Text != "" && txtDefQty.Text != "")
        //    {
        //        using (con = new SqlConnection(cs))
        //        {
        //            con.Open();
        //            cmd = new SqlCommand("INSERT INTO ProductionDetails(OrderId,LineId,HourlyProduction,InspectionQuantity,PassQuantity,ProductionDate) VALUES(@orderId,@lineId,@hourlyProduction,@inspectionQuantity,@passQuantity,@productionDate)", con);
        //            cmd.Parameters.AddWithValue("@orderId", ddlOrder.SelectedItem.Value);
        //            cmd.Parameters.AddWithValue("@lineId", ddlLine.SelectedItem.Value);
        //            cmd.Parameters.AddWithValue("@hourlyProduction", txtHour.Text);
        //            cmd.Parameters.AddWithValue("@inspectionQuantity", txtInspQty.Text);
        //            cmd.Parameters.AddWithValue("@passQuantity", txtPassQty.Text);
        //            cmd.Parameters.AddWithValue("@defectiveQuantity", txtDefQty.Text);
        //            cmd.Parameters.AddWithValue("@productionDate", txtProDate.Text);


        //            cmd.ExecuteNonQuery();
        //            DataLoad();
        //            con.Close();

        //            CleanAllControl();
        //        }
        //    }
        //    else
        //    {
        //        lblMessage.Text = "Please Provide All Values";
        //    }
        //}

        protected void btnAdd_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(cs);

            con.Open();
                    cmd = new SqlCommand("INSERT INTO ProductionDetails(OrderId,LineId,HourlyProduction,InspectionQuantity,PassQuantity,ProductionDate) VALUES(@orderId,@lineId,@hourlyProduction,@inspectionQuantity,@passQuantity,@productionDate)", con);
                    cmd.Parameters.AddWithValue("@orderId", ddlOrder.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@lineId", ddlLine.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@hourlyProduction", txtHour.Text);
                    cmd.Parameters.AddWithValue("@inspectionQuantity", txtInspQty.Text);
                    cmd.Parameters.AddWithValue("@passQuantity", txtPassQty.Text);
                    //cmd.Parameters.AddWithValue("@defectiveQuantity", txtDefQty.Text);
                    cmd.Parameters.AddWithValue("@productionDate", txtProDate.Text);


                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
               
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            cmd = new SqlCommand("Update ProductionDetails Set OrderId=@orderId,LineId=@lineId,HourlyProduction=@hourlyProduction,InspectionQuantity=@inspectionQuantity,PassQuantity=@passQuantity WHERE ProductionDetailsId=@productionDetailsId", con);
            cmd.Parameters.AddWithValue("@productionDetailsId", lblTid.Text);
            cmd.Parameters.AddWithValue("@orderId", ddlOrder.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@lineId", ddlLine.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@hourlyProduction", txtHour.Text);
            cmd.Parameters.AddWithValue("@inspectionQuantity", txtInspQty.Text);
            cmd.Parameters.AddWithValue("@passQuantity", txtPassQty.Text);
            //cmd.Parameters.AddWithValue("@defectiveQuantity", txtDefQty.Text);
            //cmd.Parameters.AddWithValue("@productionDate", txtProDate.Text);


            cmd.ExecuteNonQuery();
            DataLoad();
            con.Close();

            CleanAllControl();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("DELETE FROM ProductionDetails WHERE ProductionDetailsId=@productionDetailsId", con);
                cmd.Parameters.AddWithValue("@productionDetailsId", lblTid.Text);

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