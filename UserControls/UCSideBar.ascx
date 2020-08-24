<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCSideBar.ascx.cs" Inherits="OnlineReservation.Web.UserControls.UCSideBar" %>

<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try { ace.settings.loadState('sidebar') } catch (e) { }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
          <h5 class="lighter block green"><b>Novartz Bilişim</b></h5>
        </div>

    </div>
    <!-- /.sidebar-shortcuts -->
    <ul class="nav nav-list">
        <li class="" id="dvyönetim" runat="server">
            <a href="../Default.aspx">
                <i class="menu-icon fa fa-hospital-o"></i>
                <span class="menu-text">Yönetim </span>
            </a>
            <b class="arrow"></b>
        </li>
        <!--*****************-->
        <li class="" id="dvislemler" runat="server">

            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-desktop"></i>
                <span class="menu-text">İşlemler
                </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li  class="dropdown-toggle">
                    <a href="../Firm/FirmList.aspx">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Firmalar
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>

                </li>
                 <li class="dropdown-toggle">
                    <a href="../Firm/Branch.aspx" >
                        <i class="menu-icon fa fa-caret-right"></i>
                        Şube
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>
                    </li>
                <li class="dropdown-toggle">
                    <a href="../Firm/Department.aspx" >
                        <i class="menu-icon fa fa-caret-right"></i>
                        Bölüm
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>
                    </li>
                <li class="dropdown-toggle">
                    <a href="../Firm/DocList.aspx" >
                        <i class="menu-icon fa fa-caret-right"></i>
                        Çalışan
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>
                    </li>
            </ul>
        </li>
        <!--*****************-->
      
        <!--*****************-->
     <li class="" id="dvrandevu" runat="server">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon glyphicon glyphicon-edit"></i>
                <span class="menu-text">Randevu
                </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu" >
                <li  class="dropdown-toggle" id="dvrandevual" runat="server">
                    <a href="/Firms/FirmsPage.aspx">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Randevu Al
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>
                    </li>
                <li class="dropdown-toggle" id="dvrandevularim" runat="server">
                    <a href="../Appointments/UserAppointments.aspx" >
                        <i class="menu-icon fa fa-caret-right"></i>
                        Randevularım
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>
                    </li>
                <li class="dropdown-toggle" id="dvrandevudefterim" runat="server">
                    <a href="/Firms/Denemesayfasi.aspx" >
                        <i class="menu-icon fa fa-caret-right"></i>
                        Randevu Defterim
									<!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                    <b class="arrow"></b>
                    </li>
            </ul>
        </li>

    </ul>
    <!-- /.nav-list -->

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>
