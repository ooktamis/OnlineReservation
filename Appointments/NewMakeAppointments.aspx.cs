using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Appointments
{
    public partial class NewMakeAppointments : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (IsValidQueryString("ID"))
                {
                    Guid ID = Guid.Empty;
                    if (Guid.TryParse(Request.QueryString["ID"], out ID))
                    {
                        using (db = new novartz_stajyer1Entities())
                        {
                            FillDrp(DrpDepartment, db.FIRMDEPARTMENT.Where(t => t.FIRMID == ID).ToList(), "ID", "NAME", "Seçiniz");
                            FIRM firm = db.FIRM.SingleOrDefault(t => t.ID == ID);
                            RECID = firm.ID;
                            lblNAME.Text = firm.NAME;

                            TEMPRESERVATION.MEMBERID = CURRENTMEMBER.ID;
                            TEMPRESERVATION.TYPERESERVATIONSTATUSID = (byte)1; // Yeni randevu
                        }
                    }
                }
                else
                {
                    Response.Redirect("/Firm/FirmList.aspx");
                }
            }
        }

        protected void DrpDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnNewRandevu.Visible = false;
            if (DrpDepartment.SelectedValue != "0")
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid firmDepartmentID = Guid.Parse(DrpDepartment.SelectedValue);
                    List<VW_FIRMDEPARTMENTMEMBER> list;
                    list = db.VW_FIRMDEPARTMENTMEMBER.Where(t => t.FIRMDEPARTMENTID == firmDepartmentID).ToList();
                    FillDrp(drpEmployee, list, "ID", "FULLNAME", "Seçiniz");
                    drpEmployee.Enabled = true;
                }
            }
            else
            {
                drpEmployee.Items.Clear();
                drpEmployee.Enabled = false;
            }
        }

        protected void drpEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnNewRandevu.Visible = false;
            if (drpEmployee.SelectedValue != "0")
            {
                TEMPRESERVATION.FIRMDEPARTMENTMEMBERID = Guid.Parse(drpEmployee.SelectedValue);
                List<DATES> dateList = new List<DATES>();
                DateTime current = DateTime.Now;

                while (current < DateTime.Now.AddDays(15))
                {
                    dateList.Add(new DATES(current));
                    current = current.AddDays(1);
                }

                rptDate.DataSource = dateList;
                rptDate.DataBind();
                dvDate.Visible = true;
            }
            else
            {
                TEMPRESERVATION.FIRMDEPARTMENTMEMBERID = Guid.Empty;
                dvDate.Visible = false;
            }
            upDate.Update();
        }

        protected void rptDate_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            btnNewRandevu.Visible = false;
            switch (e.CommandName)
            {
                case "GetHours":
                    {
                        string sql = @"EXEC SP_GetFirmDepartmentMemberReservationHour @FIRMID,@DATE,@FIRMDEPARTMENTMEMBERID";
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCONNECTION"].ConnectionString);
                        con.Open();

                        SqlCommand cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@FIRMID", RECID);
                        cmd.Parameters.AddWithValue("@DATE", DateTime.Parse(e.CommandArgument.ToString()));
                        cmd.Parameters.AddWithValue("@FIRMDEPARTMENTMEMBERID", TEMPRESERVATION.FIRMDEPARTMENTMEMBERID);

                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        rptHours.DataSource = dt;
                        rptHours.DataBind();
                        upHours.Update();
                    }
                    break;
            }
        }
        protected void rptHours_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Hour":
                    {
                        TEMPRESERVATION.DATE = DateTime.Parse(e.CommandArgument.ToString());
                        btnNewRandevu.Visible = true;
                        upSummary.Update();
                    }
                    break;
            }
        }

        protected void btnNewRandevu_Click(object sender, EventArgs e)
        {
            if (ValidateNewReservation())
            {
                RESERVATION rec = new RESERVATION();
                using (db = new novartz_stajyer1Entities())
                {
                    rec.ID = Guid.NewGuid();
                    rec.MEMBERID = TEMPRESERVATION.MEMBERID;
                    rec.TYPERESERVATIONSTATUSID = TEMPRESERVATION.TYPERESERVATIONSTATUSID;
                    rec.FIRMDEPARTMENTMEMBERID = TEMPRESERVATION.FIRMDEPARTMENTMEMBERID;
                    rec.DATE = TEMPRESERVATION.DATE;
                    db.RESERVATION.Add(rec);
                    db.SaveChanges();

                    TEMPRESERVATION = new RESERVATION();
                }
            }
        }
        private bool ValidateNewReservation()
        {
            bool retval = true;

            return retval;
        }
    }
}