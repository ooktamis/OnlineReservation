<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCHeader.ascx.cs" Inherits="OnlineReservation.Web.UserControls.UCHeader" %>

<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left ">
            <a href="/Default.aspx" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Online Randevu
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="/assets/images/avatars/user.jpg" alt="Jason's Photo" />
                        <span class="user-info">
                            <asp:Literal runat="server" Text=" Hoş Geldiniz, "></asp:Literal><br />
                            <asp:Label runat="server" ID="UserNameLabel" ></asp:Label>
                        </span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="../UserNavbar/UserProfil.aspx">
                                <i class="ace-icon fa fa-cog"></i>
                                Ayarlar
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/LogOut.aspx">
                                <i class="ace-icon fa fa-power-off"></i>
                                Çıkış
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
