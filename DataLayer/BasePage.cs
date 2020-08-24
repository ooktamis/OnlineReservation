using OnlineReservation.Web.DataLayer;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web
{
    public class BasePage : System.Web.UI.Page
    {
        public SqlConnection DBCONNECTION
        {
            get
            {
                return new SqlConnection(ConfigurationManager.ConnectionStrings["DBCONNECTION"].ConnectionString);
            }
        }
        public MEMBER CURRENTMEMBER
        {
            get
            {
                if (Session["CURRENTMEMBER"] == null)
                {
                    Session["CURRENTMEMBER"] = new MEMBER();
                }
                return Session["CURRENTMEMBER"] as MEMBER;
            }
            set
            {
                Session["CURRENTMEMBER"] = value;
            }
        }
        public RESERVATION TEMPRESERVATION
        {
            get
            {
                if (Session["RESERVATION"] == null)
                {
                    Session["RESERVATION"] = new RESERVATION();
                }
                return Session["RESERVATION"] as RESERVATION;
            }
            set
            {
                Session["RESERVATION"] = value;
            }
        }
        public bool LOGINREQUIRE = true;
        public Guid RECID
        {
            get
            {
                if (ViewState["RECID"] == null)
                {
                    ViewState["RECID"] = Guid.Empty;
                }
                return Guid.Parse(ViewState["RECID"].ToString());
            }
            set
            {
                ViewState["RECID"] = value;
            }
        }

        public static bool IsUser = false;
        public static bool IsDepartmentEmployee = false;
        public static bool IsFirmResponsible = false;
        public static bool IsAdmin = false;


        public novartz_stajyer1Entities db;
        public MEMBER GetMemberByLoginname(string loginname, string password)
        {
            MEMBER rec = null;
            using (db = new novartz_stajyer1Entities())
            {
                rec = db.MEMBER.Where(a => a.LOGINNAME == loginname && a.PASWORD == password).FirstOrDefault();
            }
            return rec;
        }
        public void MemberRegistion(string name, string lastname, string phone, string mail, string password)
        {
            MEMBER rec = null;
            using (db = new novartz_stajyer1Entities())
            {
                rec = new MEMBER
                {
                    NAME = name,
                    SURNAME = lastname,
                    PHONE = phone,
                    LOGINNAME = mail,
                    PASWORD = password,
                    TYPEMEMBERID = 1, // todo: typemember drp den seçilecek
                    ID = Guid.NewGuid()
                };

                db.MEMBER.Add(rec);
                db.SaveChanges();
            };


        }
        public void FirmRegistion(string Firmname, string Firmowner, string sector, string city, string citydistrict, string address, string phone, string mail)
        {
            FIRM rec = null;
            using (db = new novartz_stajyer1Entities())
            {
                rec = new FIRM
                {
                    ID = Guid.NewGuid(),
                    NAME = Firmname,
                    DESCRIPTION = Firmowner,
                    PHONE = phone,
                    EMAIL = mail,
                    TYPESEKTORID = Convert.ToByte(sector),
                    CITYID = Convert.ToByte(city),
                    CITYDISTRICTID = Convert.ToInt16(citydistrict),
                    ADRESS = address
                };
                db.FIRM.Add(rec);
                db.SaveChanges();
            };
        }
        public void FillDrp(DropDownList drp, object data, string dataField, string textField) // illeri getirme burda yazmamızın sebebi kullanacağımız yerlerin ortak olması
        {
            drp.DataSource = data; //kaynak seçiyoruz
            drp.DataValueField = dataField;
            drp.DataTextField = textField;
            drp.DataBind(); //yükleme işlemini yapıyoruz
        }

        public void FillDrp(DropDownList drp, object data, string dataField, string textField, string selectText)  // amaç aynı illeri getirme çoğalttık sadece
        {
            drp.DataSource = data; //kaynak seçiyoruz
            drp.DataValueField = dataField;
            drp.DataTextField = textField;
            drp.DataBind(); //yükleme işlemini yapıyoruz
            drp.Items.Insert(0, new ListItem(selectText, "0"));
        }
        public void MessageBox(string message)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + message + "')", true);
        }


        public bool MEMBERControl(string mail)
        {
            MEMBER sonuc = null;
            using (db = new novartz_stajyer1Entities())
            {
                sonuc = db.MEMBER.SingleOrDefault(u => u.LOGINNAME == mail);
            }
            return sonuc != null;
        }
        public bool MEMBERMAIL(string mail)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(mail);
            if (match.Success)
                return true;
            else
                return false;
        }

        //kodlarda düzeni sağlıyor region kısmı
        #region override 
        protected override void OnInit(EventArgs e)
        {
            if (CURRENTMEMBER.ID == Guid.Empty && LOGINREQUIRE) // Login olmammış. Başka sayfalar arasında login olmadan gezinmeye izin vermez.
            {
                Response.Redirect("/Login.aspx");
            }
            base.OnInit(e);
        }
        #endregion
        public bool IsValidQueryString(string key)
        {
            if (Request.QueryString.AllKeys.Contains(key) && !string.IsNullOrEmpty(Request.QueryString[key]))
            {
                return true;
            }
            return false;
        }

        public class DATES
        {
            public DateTime PERSONDATE { get; set; }
            public DATES(DateTime date) { this.PERSONDATE = date; }
        }
    }

}
