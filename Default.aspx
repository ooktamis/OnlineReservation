<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineReservation.Web.Default" %>

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
                                <i class="ace-icon fa fa-home home-icon"></i>
                                Yönetim
                            </li>
                            <li>
                                Yeni Kullanıcı Kaydı
                            </li>
                          
                        </ul>
                    </div>

                    <div class="page-content">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="row">
                                    <div class="col-xs-12 ">
                                        <div class="widget-box">
                                            <div class="widget-header">
                                                <h4 class="widget-title">Yeni Kullanıcı Kaydı</h4>

                                             
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <div class="row">
                                                                    <div class="col-xs-2">
                                                                        <b>Kullanıcı Adı:</b>
                                                                    </div>
                                                                    <div class="col-xs-4">
                                                                        <asp:textBox ID="Uname" runat="server" class="form-control"></asp:textBox>
                                                                    </div>
                                                               
                                                                    <div class="col-xs-2">
                                                                        <b>Kullanıcı Soyadı:</b>
                                                                    </div>
                                                                    <div class="col-xs-4">
                                                                        <asp:textBox ID="Usurname" runat="server" class="form-control"></asp:textBox>
                                                                    </div>
                                                                </div>
                                                    <br />
                                                      <div class="row">
                                                                    <div class="col-xs-2">
                                                                        <b> Kullanıcı Telefon:</b>
                                                                    </div>
                                                                    <div class="col-xs-4">
                                                                        <asp:textBox ID="Uphone" runat="server" class="form-control"></asp:textBox>
                                                                    </div>
                                                        
                                                                    <div class="col-xs-2">
                                                                        <b>Kullanıcı E-mail:</b>
                                                                    </div>
                                                                    <div class="col-xs-4">
                                                                        <asp:textBox ID="Umail" runat="server" class="form-control"></asp:textBox>
                                                                    </div>
                                                                </div>
                                                    <br />
                                                    
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-sm-11"></div>
                                                        <asp:Button CssClass="btn btn-success " runat="server" ID="Ukaydet" Text="Kaydet"></asp:Button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.span -->

                                   
                                    <!-- /.span -->

                                    <!-- /.span -->
                                </div>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <uc1:UCFooter runat="server" ID="UCFooter" />
        </div>
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    </form>
		<script src="/assets/js/jquery.maskedinput.min.js"></script>

  
</body>
</html>
