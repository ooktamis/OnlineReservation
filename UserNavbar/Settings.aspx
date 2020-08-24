<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="OnlineReservation.Web.UserNavbar.Settings" %>

<%@ Register Src="~/UserControls/UCHeader.ascx" TagPrefix="uc1" TagName="UCHeader" %>
<%@ Register Src="~/UserControls/UCSideBar.ascx" TagPrefix="uc1" TagName="UCSideBar" %>
<%@ Register Src="~/UserControls/UCFooter.ascx" TagPrefix="uc1" TagName="UCFooter" %>
<%@ Register Src="~/UserControls/UCFooterJS.ascx" TagPrefix="uc1" TagName="UCFooterJS" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Online Randevu-Admin</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/assets/css/fonts.googleapis.com.css" />
    <link rel="stylesheet" href="/assets/css/ace.min.css" class="ace-main-stylesheet" />
    <!--[if lte IE 9]>
			<link rel="stylesheet" href="/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
    <link rel="stylesheet" href="/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="/assets/css/ace-rtl.min.css" />
    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="/assets/css/ace-ie.min.css" />
		<![endif]-->
    <script src="/assets/js/ace-extra.min.js"></script>

    <!--[if lte IE 8]>
		<script src="/assets/js/html5shiv.min.js"></script>
		<script src="/assets/js/respond.min.js"></script>
		<![endif]-->
    <link href="/Style/css/Custom.css" rel="stylesheet" />
</head>
<body class="no-skin">
    <form id="form1" runat="server">
        <uc1:UCHeader runat="server" ID="UCHeader" />
        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try { ace.settings.loadState('main-container') } catch (e) { }
            </script>
            <uc1:UCSideBar runat="server" ID="UCSideBar" />
              <div class="main-content">
                <div class="main-content-inner">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-building building-icon"></i>
                                Hesap
                            </li>
                        </ul>
                    </div>
                    <div class="page-content">
                        <div class="row">
                            <div class="col-xs-12 ">
                                <div class="widget-box">
                                    <div class="widget-header">
                                        <h4 class="widget-title">Ayarlar</h4>
                                        <button class="btn btn-sm btn-success pull-right " style="height:38px;" data-dismiss="modal" >
                                            <i class="ace-icon fa fa-check"></i>Kaydet
                                        </button>
                                    </div>
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <div class="row">
                                                <div class="col-xs-1">
                                                    <b>Adı:</b>
                                                </div>
                                                <div class="col-xs-3">
                                                    <asp:TextBox ID="textbox13" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-xs-1">
                                                    <b>Soyadı:</b>
                                                </div>
                                                <div class="col-xs-3">
                                                    <asp:TextBox ID="textbox21" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-xs-1">
                                                    <b>E-mail:</b>
                                                </div>
                                                <div class="col-xs-3">
                                                    <asp:TextBox ID="textbox15" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-xs-1">
                                                    <b>Telefon:</b>
                                                </div>
                                                <div class="col-xs-3">
                                                    <asp:TextBox ID="textbox14" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                </div><br />
                            </div>
                            <div class="col-xs-12 ">
                                <div class="widget-box">
                                    <div class="widget-header">
                                        <h4 class="widget-title">Şifre Değiştir</h4>
                                        <button class="btn btn-sm btn-success pull-right " style="height:38px;" data-dismiss="modal" >
                                            <i class="ace-icon fa fa-check"></i>
                                            Kaydet
                                        </button>
                                    </div>
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <div class="row">
                                                <div class="col-xs-1">
                                                    <b>Yeni Şifre:</b>
                                                </div>
                                                <div class="col-xs-3">
                                                    <asp:TextBox ID="textbox1" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-xs-1">
                                                    <b>Şifre Tekrar:</b>
                                                </div>
                                                <div class="col-xs-3">
                                                    <asp:TextBox ID="textbox2" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
                  <uc1:UCFooter runat="server" ID="UCFooter" />
              </div>
            <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
            </form>
</body>
</html>