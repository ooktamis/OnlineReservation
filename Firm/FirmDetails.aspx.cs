using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Firm
{
    public partial class FirmDetails : BasePage
    {
        public Guid BRANCHID
        {
            get
            {
                if (ViewState["BRANCHID"] == null)
                {
                    ViewState["BRANCHID"] = Guid.Empty;
                }

                return Guid.Parse(ViewState["BRANCHID"].ToString());
            }
            set
            {
                ViewState["BRANCHID"] = value;
            }
        }
        public Guid DEPARTMENTID
        {
            get
            {
                if (ViewState["DEPARTMENTID"] == null)
                {
                    ViewState["DEPARTMENTID"] = Guid.Empty;
                }
                return Guid.Parse(ViewState["DEPARTMENTID"].ToString());
            }
            set
            {
                ViewState["DEPARTMENTID"] = value;
            }
        }
        public Guid DEPARTMENTMEMBERID
        {
            get
            {
                if (ViewState["DEPARTMENTMEMBERID"] == null)
                {
                    ViewState["DEPARTMENTMEMBERID"] = Guid.Empty;
                }
                return Guid.Parse(ViewState["DEPARTMENTMEMBERID"].ToString());
            }
            set
            {
                ViewState["DEPARTMENTMEMBERID"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (IsValidQueryString("ID"))
                {
                    Guid ID = Guid.Empty;

                    if (Guid.TryParse(Request.QueryString["ID"], out ID))
                    {
                        RECID = ID;
                        InitPage(false);
                    }
                }
                else
                {
                    Response.Redirect("/Firm/FirmList.aspx");
                }



            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            InitPage(true);
        }
        private void InitPage(bool update)
        {
            if (RECID != Guid.Empty)
            {
                using (db = new novartz_stajyer1Entities())
                {
                    VW_FIRM rec = db.VW_FIRM.Where(a => a.ID == RECID).FirstOrDefault();



                    if (update)
                    {
                        pnlDisplay.Visible = false;
                        pnlUpdate.Visible = true;
                        btnUpdate.Visible = false;

                        //drpFirmCity.DataSource = db.CITY.ToList(); //kaynak seçiyoruz
                        //drpFirmCity.DataValueField = "ID";
                        //drpFirmCity.DataTextField = "NAME";
                        //drpFirmCity.DataBind(); //yükleme işlemini yapıyoruz
                        //drpFirmCity.Items.Insert(0, new ListItem("Seçiniz..", "0"));

                        //FillCityDrp(drpFirmCity);
                        //FillDrp(drpFirmCity, db.CITY.ToList());

                        FillDrp(drpFirmCity, db.CITY.ToList(), "ID", "NAME");



                        drpFirmCityDistrict.DataSource = db.CITYDISTRICT.Where(t => t.CITYID == rec.CITYID).ToList();
                        drpFirmCityDistrict.DataValueField = "ID";
                        drpFirmCityDistrict.DataTextField = "NAME";
                        drpFirmCityDistrict.DataBind();
                        drpFirmCityDistrict.Items.Insert(0, new ListItem("Seçiniz..", "0"));

                        drpFirmSector.DataSource = db.TYPESEKTOR.ToList();
                        drpFirmSector.DataValueField = "ID";
                        drpFirmSector.DataTextField = "NAME";
                        drpFirmSector.DataBind();
                        drpFirmSector.Items.Insert(0, new ListItem("Seçiniz..", "0"));


                        txtFirmName.Text = rec.NAME;
                        txtFirmOwner.Text = rec.DESCRIPTION;
                        drpFirmSector.SelectedValue = rec.TYPESEKTORID.ToString();
                        txtFirmAddress.Text = rec.ADRESS;
                        txtFirmPhone.Text = rec.PHONE;
                        txtFirmEmail.Text = rec.EMAIL;
                        drpFirmCity.SelectedValue = rec.CITYID.HasValue ? rec.CITYID.ToString() : "0";
                        drpFirmCityDistrict.SelectedValue = rec.CITYDISTRICTID.HasValue ? rec.CITYDISTRICTID.ToString() : "0";




                    }
                    else
                    {
                        pnlDisplay.Visible = true;
                        pnlUpdate.Visible = false;
                        btnUpdate.Visible = true;

                        lblBranchF.Text = rec.NAME; // modalın içindeki firma adı
                        lblDepF.Text = rec.NAME;// bölüm modalının içindeki firma adı
                        lblDepMemberF.Text = rec.NAME;

                        lblFirmName.Text = rec.NAME;
                        lblFirmAddress.Text = rec.ADRESS;
                        lblFirmPhone.Text = rec.PHONE;

                        lblFirmCity.Text = rec.CITYNAME;
                        lblFirmCityDistrict.Text = rec.CITYDISTRICTNAME;
                        lblFirmSector.Text = rec.TYPESEKTORNAME;
                        lblFirmEmail.Text = rec.EMAIL;
                        lblFirmOwner.Text = rec.DESCRIPTION;


                        rpFirmBranchList.DataSource = db.VW_FIRMBRANCH.Where(t => t.FIRMID == rec.ID).ToList();
                        rpFirmBranchList.DataBind();

                        rpFirmDepartmentList.DataSource = db.VW_FIRMDEPARTMENT.Where(t => t.FIRMID == rec.ID).ToList();
                        rpFirmDepartmentList.DataBind();

                        rpFirmDepMemberList.DataSource = db.VW_FIRMDEPARTMENTMEMBER.Where(t => t.FIRMID == rec.ID).ToList();
                        rpFirmDepMemberList.DataBind();
                    }
                }
                upContent.Update();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            InitPage(false);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                FIRM rec = db.FIRM.SingleOrDefault(t => t.ID == RECID);

                rec.NAME = txtFirmName.Text;
                rec.DESCRIPTION = txtFirmOwner.Text;
                rec.TYPESEKTORID = Convert.ToByte(drpFirmSector.SelectedValue);
                rec.ADRESS = txtFirmAddress.Text;
                rec.PHONE = txtFirmPhone.Text;
                rec.EMAIL = txtFirmEmail.Text;
                rec.CITYID = Convert.ToByte(drpFirmCity.SelectedValue); //byte gönderdiğin için onu byte çevirmesi lazım
                rec.CITYDISTRICTID = Convert.ToInt16(drpFirmCityDistrict.SelectedValue); // citydistrictid smallint olduğu için toınt16 ya çevirdik bytedan büyük7
                //db.FIRM.Add(rec); bu fonksiyonu eklersen de yeni kayıt ekleme yapar
                db.SaveChanges();
            }

            InitPage(false);

        }

        protected void drpFirmCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                byte cityID = Convert.ToByte(drpFirmCity.SelectedValue);


                FillDrp(drpFirmCityDistrict, db.CITYDISTRICT.Where(t => t.CITYID == cityID).ToList(), "ID", "NAME", "Seçiniz..");
                //drpFirmCityDistrict.Items.Insert(0, new ListItem("Seçiniz..", "0"));


                //drpFirmCityDistrict.DataSource = db.CITYDISTRICT.Where(t => t.CITYID == cityID).ToList();
                //drpFirmCityDistrict.DataValueField = "ID";
                //drpFirmCityDistrict.DataTextField = "NAME";
                //drpFirmCityDistrict.DataBind();
                //drpFirmCityDistrict.Items.Insert(0, new ListItem("Seçiniz..", "0"));
            }
        }


        protected void rpFirmBranchList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Update":
                    if (!string.IsNullOrEmpty(e.CommandArgument.ToString()))
                    {
                        using (db = new novartz_stajyer1Entities())
                        {
                            Guid selectedBranchID = Guid.Parse(e.CommandArgument.ToString());
                            lblBranchIsUpdate.Text = "Güncelleyiniz";
                            FIRMBRANCH rec = db.FIRMBRANCH.SingleOrDefault(t => t.ID == selectedBranchID);
                            if (rec != null)
                            {
                                FillDrp(drpBranchC, db.CITY.ToList(), "ID", "NAME");

                                txtBranchName.Text = rec.NAME;
                                txtBranchAddr.Text = rec.ADRESS;
                                txtBranchPho.Text = rec.PHONE;
                                txtBranchEm.Text = rec.EMAIL;
                                if (rec.CITYID.HasValue)
                                {
                                    FillDrp(drpBranchCD, db.CITYDISTRICT.Where(t => t.CITYID == rec.CITYID).ToList(), "ID", "NAME", "Seçiniz");
                                    drpBranchC.SelectedValue = rec.CITYID.ToString();

                                }
                                if (rec.CITYDISTRICTID.HasValue)
                                {
                                    drpBranchCD.SelectedValue = rec.CITYDISTRICTID.ToString();
                                }

                                BRANCHID = selectedBranchID;
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "OpenBranchModal", "$('#mdlNewBranch').modal('show');", true);
                                upMdlNewBranch.Update();
                            }
                        }
                    }
                    break;
                case "Delete":

                    using (db = new novartz_stajyer1Entities())
                    {
                        Guid selectedBranchID = Guid.Parse(e.CommandArgument.ToString());

                        FIRMBRANCH rec = db.FIRMBRANCH.SingleOrDefault(t => t.ID == selectedBranchID);
                        if (rec != null)
                        {
                            db.FIRMBRANCH.Remove(rec);
                            db.SaveChanges();
                            InitPage(false);
                            upMdlNewBranch.Update();
                        }
                    }
                    break;

            }


        }
        protected void drpBranchC_SelectedIndexChanged(object sender, EventArgs e) //bu kısma ihtiyacım var mı????
        {
            using (db = new novartz_stajyer1Entities())
            {
                byte cityID = Convert.ToByte(drpBranchC.SelectedValue);
                FillDrp(drpBranchCD, db.CITYDISTRICT.Where(t => t.CITYID == cityID).ToList(), "ID", "NAME", "Seçiniz..");

            }
        }

        protected void btnNewBranch_Click(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                drpBranchCD.Items.Clear();
                txtBranchName.Text = string.Empty;
                txtBranchAddr.Text = string.Empty;
                txtBranchPho.Text = string.Empty;
                txtBranchEm.Text = string.Empty;
                lblBranchIsUpdate.Text = "Giriniz";
                FillDrp(drpBranchC, db.CITY.ToList(), "ID", "NAME", "Seçiniz..");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "OpenBranchModal", "$('#mdlNewBranch').modal('show');", true);
                upMdlNewBranch.Update();
            }
        }

        private bool ValidateBranch()
        {
            bool retval = true;

            if (string.IsNullOrEmpty(txtBranchName.Text))
            {
                retval = false;
                MessageBox("Şube adı giriniz.");
            }

            return retval;
        }
        protected void btnNewDepartment_Click(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                lblDepartmentIsUpdate.Text = "Giriniz";
                FillDrp(drpDepBranch, db.FIRMBRANCH.Where(d => d.FIRMID == RECID).ToList(), "ID", "NAME", "Seçiniz..");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "OpenDepartmentModal", "$('#mdlNewDepartment').modal('show');", true);
                upMdlNewDepartment.Update();
            }
        }

        protected void btnAddBranch_Click(object sender, EventArgs e)
        {
            if (ValidateBranch())
            {
                using (db = new novartz_stajyer1Entities())
                {
                    FIRMBRANCH rec = null;

                    if (BRANCHID != Guid.Empty)
                    {
                        rec = db.FIRMBRANCH.SingleOrDefault(t => t.ID == BRANCHID);
                    }
                    else
                    {
                        rec = new FIRMBRANCH();
                        rec.ID = Guid.NewGuid();
                        rec.FIRMID = RECID;
                    }
                    rec.NAME = txtBranchName.Text;
                    rec.ADRESS = txtBranchAddr.Text;
                    rec.PHONE = txtBranchPho.Text;
                    rec.EMAIL = txtBranchEm.Text;

                    if (drpBranchC.SelectedValue == "0")
                    {
                        rec.CITYID = null;
                    }
                    else
                    {
                        rec.CITYID = Convert.ToByte(drpBranchC.SelectedValue);
                    }


                    if (drpBranchCD.SelectedValue == "0")
                    {
                        rec.CITYDISTRICTID = null;
                    }
                    else
                    {
                        rec.CITYDISTRICTID = Convert.ToInt16(drpBranchCD.SelectedValue);
                    }

                    if (BRANCHID == Guid.Empty)
                    {
                        db.FIRMBRANCH.Add(rec);
                    }
                    MessageBox("İşleminiz Başarılı");
                    db.SaveChanges();
                    InitPage(false);
                    upBranch.Update();
                }
            }
        }

        private bool ValidateDepartment()
        {
            bool retval = true;

            if (string.IsNullOrEmpty(txtDepName.Text))
            {
                retval = false;
                MessageBox("Bölüm adı giriniz.");
            }

            return retval;
        }
        protected void btnAddDepartment_Click(object sender, EventArgs e)
        {
            if (ValidateDepartment())
            {
                using (db = new novartz_stajyer1Entities())
                {
                    FIRMDEPARTMENT rec = null;

                    if (DEPARTMENTID != Guid.Empty)
                    {
                        rec = db.FIRMDEPARTMENT.SingleOrDefault(t => t.ID == DEPARTMENTID);
                    }
                    else
                    {
                        rec = new FIRMDEPARTMENT();
                        rec.ID = Guid.NewGuid();

                    }
                    rec.FIRMID = RECID; rec.FIRMBRANCHID = Guid.Parse(drpDepBranch.SelectedValue);
                    rec.NAME = txtDepName.Text;


                    if (DEPARTMENTID == Guid.Empty)
                    {
                        db.FIRMDEPARTMENT.Add(rec);
                    }
                    MessageBox("İşleminiz Başarılı");
                    db.SaveChanges();
                    InitPage(false);
                    upDepartment.Update();
                }
            }

        }

        protected void rpFirmDepartmentList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Update":
                    if (!string.IsNullOrEmpty(e.CommandArgument.ToString()))
                    {
                        using (db = new novartz_stajyer1Entities())
                        {
                            Guid selectedDepartmentID = Guid.Parse(e.CommandArgument.ToString());
                            lblDepartmentIsUpdate.Text = "Güncelleyiniz";
                            FIRMDEPARTMENT rec = db.FIRMDEPARTMENT.SingleOrDefault(t => t.ID == selectedDepartmentID);
                            if (rec != null)
                            {
                                drpDepBranch.SelectedValue = rec.FIRMBRANCHID.ToString();
                                txtDepName.Text = rec.NAME;
                                DEPARTMENTID = selectedDepartmentID;
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "OpenDepartmentModal", "$('#mdlNewDepartment').modal('show');", true);
                                upDepartment.Update();
                            }
                        }
                    }
                    break;

                case "Delete":

                    using (db = new novartz_stajyer1Entities())
                    {
                        Guid selectedDepartmentID = Guid.Parse(e.CommandArgument.ToString());

                        FIRMDEPARTMENT rec = db.FIRMDEPARTMENT.SingleOrDefault(t => t.ID == selectedDepartmentID);
                        if (rec != null)
                        {
                            db.FIRMDEPARTMENT.Remove(rec);
                            db.SaveChanges();
                            InitPage(false);
                            upDepartment.Update();
                        }
                    }
                    break;

            }

        }
        private bool ValidateDepartmentMember()
        {
            DateTime birthday;
            bool retval = true;

            if (string.IsNullOrEmpty(txtDepMemberName.Text))
            {
                retval = false;
                MessageBox("Ad Giriniz.");
            }
            if (string.IsNullOrEmpty(txtDepMemberSurname.Text))
            {
                retval = false;
                MessageBox("Soyad Giriniz.");
            }
            if (string.IsNullOrEmpty(txtDepMemberEmail.Text))
            {
                retval = false;
                MessageBox("Email Giriniz.");
            }
            else if (MEMBERControl(txtDepMemberEmail.Text))
            {
                retval = false;
                MessageBox("Kullanıcı zaten mevcut.");
            }
            if (string.IsNullOrEmpty(txtDepMemberPassword.Text))
            {
                retval = false;
                MessageBox("Şifre Giriniz.");
            }
            if (string.IsNullOrEmpty(drpDepMemberStatus.SelectedValue))
            {
                retval = false;
                MessageBox("Çalışma Durumu Seçiniz.");
            }

            return retval;
        }

        protected void btnAddDepartmentMember_Click(object sender, EventArgs e)
        {

            if (ValidateDepartmentMember())
            {
                Guid id = Guid.NewGuid();
                MEMBER member = null;
                using (db = new novartz_stajyer1Entities())
                {
                    member = new MEMBER
                    {
                        NAME = txtDepMemberName.Text,
                        SURNAME = txtDepMemberSurname.Text,
                        LOGINNAME = txtDepMemberEmail.Text,
                        BIRDDATE = Convert.ToDateTime(txtDepMemberBirthday.Text),
                        PHONE = txtDepMemberTelephone.Text,
                        PASWORD = txtDepMemberPassword.Text,
                        CANLOGIN = true,
                        GENDER = drpDepMemberGender.SelectedValue == "1",
                        TYPEMEMBERID = 2,
                        ID = id,

                    };
                    db.MEMBER.Add(member);
                    db.SaveChanges();
                };

                FIRMDEPARTMENTMEMBER rec = null;
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id2 = Guid.NewGuid();
                    rec = new FIRMDEPARTMENTMEMBER
                    {
                        ID = id2,
                        FIRMDEPARTMENTID = Guid.Parse(drpDepMemberDepartment.SelectedValue),
                        ISACTIVE = drpDepMemberStatus.SelectedValue == "1",
                        MEMBERID = id
                    };
                    db.FIRMDEPARTMENTMEMBER.Add(rec);
                    db.SaveChanges();
                    InitPage(false);
                    upDepartmentMember.Update();
                };
                MessageBox("İşleminiz Başarılı");

            }

        }

        protected void rpFirmDepMemberList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Update":
                    if (!string.IsNullOrEmpty(e.CommandArgument.ToString()))
                    {
                        using (db = new novartz_stajyer1Entities())
                        {
                            Guid selectedMemberID = Guid.Parse(e.CommandArgument.ToString());
                            lblDepartmentMemberIsUpdate.Text = "Güncelleyiniz";
                            VW_FIRMDEPARTMENTMEMBER rec = db.VW_FIRMDEPARTMENTMEMBER.SingleOrDefault(t => t.ID == selectedMemberID);
                            if (rec != null)
                            {
                                FillDrp(drpDepMemberBranch, db.FIRMBRANCH.Where(d => d.FIRMID == RECID).ToList(), "ID", "NAME", "Şubesizler");
                                if (rec.FIRMBRANCHID.HasValue)
                                {
                                    drpDepMemberBranch.SelectedValue = rec.FIRMBRANCHID.Value.ToString();
                                }
                                drpDepMemberBranch_SelectedIndexChanged(null, null);
                                drpDepMemberDepartment.SelectedValue = rec.FIRMDEPARTMENTID.ToString();
                                txtDepMemberTelephone.Text = rec.PHONE;
                                txtDepMemberName.Text = rec.NAME;
                                txtDepMemberSurname.Text = rec.SURNAME;
                                txtDepMemberBirthday.Text = rec.BIRDDATE.ToString();
                                if (rec.GENDER.HasValue)
                                {
                                    drpDepMemberGender.SelectedValue = rec.GENDER.Value ? "1" : "0";
                                }
                                drpDepMemberStatus.SelectedValue = rec.ISACTIVE ? "1" : "0";
                                drpDepMemEmail.Text = rec.LOGINNAME;
                                DEPARTMENTMEMBERID = selectedMemberID;
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "OpenDepartmentMemberModal", "$('#mdlNewDepartmentMember').modal('show');", true);
                                upMdlNewDepartmentMember.Update();
                            }
                        }
                    }
                    break;
                case "Delete": // OLMADI BU KISIMM!!!

                    using (db = new novartz_stajyer1Entities())
                    {
                        Guid selectedMemberID = Guid.Parse(e.CommandArgument.ToString());

                        FIRMDEPARTMENTMEMBER rec = db.FIRMDEPARTMENTMEMBER.SingleOrDefault(t => t.ID == selectedMemberID);
                        if (rec != null)
                        {
                            //hata kontrolü yap 547
                            db.FIRMDEPARTMENTMEMBER.Remove(rec);
                            db.SaveChanges();
                            //  InitPage(false);
                            //  upMdlNewDepartmentMember.Update();
                        }



                        MEMBER mem = db.MEMBER.SingleOrDefault(t => t.ID == rec.MEMBERID);
                        if (mem != null)
                        {
                            db.MEMBER.Remove(mem);
                            db.SaveChanges();
                            InitPage(false);
                            upDepartmentMember.Update();
                        }

                    }

                    break;

            }

        }

        protected void btnNewDepartmentMember_Click(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {

                lblDepartmentMemberIsUpdate.Text = "Giriniz";
                FillDrp(drpDepMemberBranch, db.FIRMBRANCH.Where(d => d.FIRMID == RECID).ToList(), "ID", "NAME", "Şubesizler");
                drpDepMemberBranch_SelectedIndexChanged(null, null);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "OpenDepartmentMemberModal", "$('#mdlNewDepartmentMember').modal('show');", true);
                upMdlNewDepartmentMember.Update();
            }
        }

        protected void drpDepMemberBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            Guid? branchID = null;
            if (drpDepMemberBranch.SelectedValue != "0")
            {
                branchID = Guid.Parse(drpDepMemberBranch.SelectedValue);
            }

            using (db = new novartz_stajyer1Entities())
            {
                FillDrp(drpDepMemberDepartment, db.FIRMDEPARTMENT.Where(d => d.FIRMBRANCHID == branchID).ToList(), "ID", "NAME", "Seçiniz..");
            }
        }

        protected void btnmdl2save_Click(object sender, EventArgs e)
        {

        }
    }
}
