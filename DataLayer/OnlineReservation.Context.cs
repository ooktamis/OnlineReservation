﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class novartz_stajyer1Entities : DbContext
    {
        public novartz_stajyer1Entities()
            : base("name=novartz_stajyer1Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<CITY> CITY { get; set; }
        public DbSet<CITYDISTRICT> CITYDISTRICT { get; set; }
        public DbSet<FIRM> FIRM { get; set; }
        public DbSet<FIRMBRANCH> FIRMBRANCH { get; set; }
        public DbSet<FIRMDEPARTMENT> FIRMDEPARTMENT { get; set; }
        public DbSet<FIRMDEPARTMENTMEMBER> FIRMDEPARTMENTMEMBER { get; set; }
        public DbSet<FIRMRESPONSIBLE> FIRMRESPONSIBLE { get; set; }
        public DbSet<MEMBER> MEMBER { get; set; }
        public DbSet<RESERVATION> RESERVATION { get; set; }
        public DbSet<TYPEMEMBER> TYPEMEMBER { get; set; }
        public DbSet<TYPERESERVATIONSTATUS> TYPERESERVATIONSTATUS { get; set; }
        public DbSet<TYPESEKTOR> TYPESEKTOR { get; set; }
        public DbSet<VW_FIRM> VW_FIRM { get; set; }
        public DbSet<VW_FIRMBRANCH> VW_FIRMBRANCH { get; set; }
        public DbSet<VW_FIRMDEPARTMENT> VW_FIRMDEPARTMENT { get; set; }
        public DbSet<VW_FIRMDEPARTMENTMEMBER> VW_FIRMDEPARTMENTMEMBER { get; set; }
        public DbSet<VW_FIRMRESPONSIBLE> VW_FIRMRESPONSIBLE { get; set; }
        public DbSet<VW_MEMBER> VW_MEMBER { get; set; }
    
        public virtual ObjectResult<SP_GetFirmDepartmentMemberReservationHour_Result> SP_GetFirmDepartmentMemberReservationHour(Nullable<System.Guid> fIRMID, Nullable<System.DateTime> dATE, Nullable<System.Guid> fIRMDEPARTMENTMEMBERID)
        {
            var fIRMIDParameter = fIRMID.HasValue ?
                new ObjectParameter("FIRMID", fIRMID) :
                new ObjectParameter("FIRMID", typeof(System.Guid));
    
            var dATEParameter = dATE.HasValue ?
                new ObjectParameter("DATE", dATE) :
                new ObjectParameter("DATE", typeof(System.DateTime));
    
            var fIRMDEPARTMENTMEMBERIDParameter = fIRMDEPARTMENTMEMBERID.HasValue ?
                new ObjectParameter("FIRMDEPARTMENTMEMBERID", fIRMDEPARTMENTMEMBERID) :
                new ObjectParameter("FIRMDEPARTMENTMEMBERID", typeof(System.Guid));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_GetFirmDepartmentMemberReservationHour_Result>("SP_GetFirmDepartmentMemberReservationHour", fIRMIDParameter, dATEParameter, fIRMDEPARTMENTMEMBERIDParameter);
        }
    }
}
