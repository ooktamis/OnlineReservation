using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Firm
{
    public partial class Department : BasePage
    {
        public bool HASBRANCH
        {
            get
            {
                if (ViewState["HASBRANCH"] == null)
                {
                    ViewState["HASBRANCH"] = Guid.Empty;
                }
                return Convert.ToBoolean(ViewState["HASBRANCH"].ToString());
            }
            set
            {
                ViewState["RECID"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (IsAdmin || IsFirmResponsible)
                {
                    using (db = new novartz_stajyer1Entities())
                    {
                        if (IsFirmResponsible)
                        {

                            List<VW_FIRM> list;
                            list = db.VW_FIRM.Where(t => t.FIRMRESPONSIBLEID == CURRENTMEMBER.ID).ToList();
                            FillDrp(drpFirms, list, "ID", "NAME", "Seçiniz");
                        }
                        else
                        {
                            FillDrp(drpFirms, db.FIRM.ToList(), "ID", "NAME", "Seçiniz");
                        }

                    }

                }
            }

        }
        protected void drpFirms_SelectedIndexChanged(object sender, EventArgs e)//Önemli...
        {
            using (db = new novartz_stajyer1Entities())
            {
                Guid firmID = Guid.Parse(drpFirms.SelectedValue);
                List<FIRMBRANCH> firmBranch = db.FIRMBRANCH.Where(t => t.FIRMID == firmID).ToList();//Burada içi dolumu boşmu diye baktık count içinde kaçtane kaçadet veri olduğuna bakıyor bu özelliği unutma
                //IQueryable<FIRMBRANCH> firmBranch = db.FIRMBRANCH.Where(t => t.FIRMID == firmID);
                if (firmBranch.Count > 0)
                {
                    FillDrp(drpBranch, firmBranch, "ID", "NAME", "Seçiniz");
                    dvBranch.Visible = true;
                    UpdatePanel.Update();
                }
                else
                {
                    dvBranch.Visible = false;
                    UpdatePanel.Update();
                }
            }
        }
        protected void rpDepartmentList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id = Guid.Parse(e.CommandArgument.ToString());
                    VW_FIRMDEPARTMENT department = db.VW_FIRMDEPARTMENT.SingleOrDefault(t => t.ID == id);

                    RECID = department.ID;
                    hdnDepartmentID.Value = e.CommandArgument.ToString();
                    txtUpdateFirm.Text = department.FIRMNAME;
                    txtUpdateBranch.Text = department.FIRMBRANCHNAME;
                    txtUpdateDeparment.Text = department.NAME;
                }
                ScriptManager.RegisterStartupScript(this, GetType(), "", "OpenModal()", true);

                upModalUpdate.Update();
            }
            else if (e.CommandName == "Delete")//Eğer buton Delete butonu ise bunu yapacak.
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id = Guid.Parse(e.CommandArgument.ToString());
                    FIRMDEPARTMENT department = db.FIRMDEPARTMENT.SingleOrDefault(t => t.ID == id);//SinglorDefault tek veri çekmek için kulladığımız deyim
                                                                                                   //FIRMBRANCH test = (from t in db.FIRMBRANCH where t.ID == id select t).SingleOrDefault();
                    db.FIRMDEPARTMENT.Remove(department);//silmek için kullandın removeyi
                    db.SaveChanges();
                    FillDepartment();
                    UpdatePanel.Update();

                }
            }
        }
        private void FillDepartment()//Firma Seçtiğimiz yer Firma seçmemizi sağlıyor.
        {
            using (db = new novartz_stajyer1Entities())
            {
                if (drpFirms.SelectedValue != "0")
                {
                    Guid id = Guid.Empty;
                    if (dvBranch.Visible && drpBranch.SelectedValue != "0")
                    {
                        id = Guid.Parse(drpBranch.SelectedValue);
                        rpDepartmentList.DataSource = db.VW_FIRMDEPARTMENT.Where(t => t.FIRMBRANCHID == id).ToList();
                    }
                    else
                    {
                        id = Guid.Parse(drpFirms.SelectedValue);
                        rpDepartmentList.DataSource = db.VW_FIRMDEPARTMENT.Where(t => t.FIRMID == id).ToList();
                    }

                    rpDepartmentList.DataBind();
                }
                else
                {
                    MessageBox("Firma seçiniz!");
                }
            }
        }
        protected void NewDepartment_Click(object sender, EventArgs e)//Listele Butonunu Temsil Ediyor ona tıklandığı zaman yapılması gerekenleri
        {
            FillDepartment();
            upDepartmentList.Update();
        }
        public void DepartmentRegistration(string name)// Bölüm eklemek için Oluşturduğumuz fonksiyon.
        {
            FIRMDEPARTMENT rec = null;
            using (db = new novartz_stajyer1Entities())
            {
                rec = new FIRMDEPARTMENT();
                rec.ID = Guid.NewGuid();
                rec.NAME = name;
                rec.FIRMID = Guid.Parse(drpFirms.SelectedValue);

                if (!dvBranch.Visible || drpBranch.SelectedValue == "0")
                {
                    rec.FIRMBRANCHID = null;
                }
                else
                {
                    rec.FIRMBRANCHID = Guid.Parse(drpBranch.SelectedValue);
                }

                db.FIRMDEPARTMENT.Add(rec);
                db.SaveChanges();
                FillDepartment();
                upDepartmentList.Update();

            };
            MessageBox("İşleminiz Başarılı");
        }
        protected void btnSaveBranch_Click(object sender, EventArgs e)//Bölüm Ekleme yapmak için Girilen Kısımı temsil ediyor.
        {
            if (string.IsNullOrEmpty(txtDepartment.Text))
            {
                MessageBox("Bölüm Adı boş geçilemez.");
            }
            else
            {
                DepartmentRegistration(txtDepartment.Text);
            }
        }
        protected void btnUpdateSaveServer_Click(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                FIRMDEPARTMENT rec = db.FIRMDEPARTMENT.SingleOrDefault(t => t.ID == RECID);
                rec.NAME = txtUpdateDeparment.Text;
                db.SaveChanges();
                FillDepartment();
                UpdatePanel.Update();
            }
        }

        protected void btnNewDepartment_Click(object sender, EventArgs e)
        {
            if (drpFirms.SelectedValue == "0")
            {
                MessageBox("Firma seçiniz!");
            }
            else
            {
                if (!dvBranch.Visible || drpBranch.SelectedValue == "0")
                {
                    dvShowLblBranch.Visible = false;
                }
                else
                {
                    dvShowLblBranch.Visible = true;
                    lblmdlBranch.Text = drpBranch.SelectedItem.Text;
                }
                lblmdlFirm.Text = drpFirms.SelectedItem.Text;
                ScriptManager.RegisterStartupScript(this, GetType(), "", "$('#mdlNewDepartment').modal('show');", true);
                upNewDepartment.Update();
            }
        }
        protected void btnCloseBranch_Click(object sender, EventArgs e)
        {
            if (drpBranch.SelectedValue != "0")
            {
                drpBranch.SelectedValue = null;
            }
            if (!string.IsNullOrEmpty(lblmdlBranch.Text))
            {
                lblmdlBranch.Text = null;
                UpdatePanel.Update();
            }
            else
            {
                lblmdlBranch.Text = null;
                UpdatePanel.Update();
            }
        }
    }
}