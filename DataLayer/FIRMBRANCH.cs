//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineReservation.Web.DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class FIRMBRANCH
    {
        public System.Guid ID { get; set; }
        public System.Guid FIRMID { get; set; }
        public string NAME { get; set; }
        public Nullable<byte> CITYID { get; set; }
        public Nullable<short> CITYDISTRICTID { get; set; }
        public string ADRESS { get; set; }
        public string PHONE { get; set; }
        public string EMAIL { get; set; }
    
        public virtual CITY CITY { get; set; }
        public virtual CITYDISTRICT CITYDISTRICT { get; set; }
        public virtual FIRM FIRM { get; set; }
    }
}
