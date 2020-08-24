<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirmList.aspx.cs" Inherits="OnlineReservation.Web.Firm.FirmList" %>

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

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" />
    <!--[if lte IE 8]>
		<script src="/assets/js/html5shiv.min.js"></script>
		<script src="/assets/js/respond.min.js"></script>
		<![endif]-->
    <link href="/Style/css/Custom.css" rel="stylesheet" />
   <%-- <style>
        .disabledbutton {
            background-color:black;
            pointer-events: none;
            opacity: 0.4;
        }
        .ui-dialog .ui-dialog-title {
            direction: rtl;
            float: right;
            margin: 0.1em 0 0.2em 16px;
        }

        .ui-dialog .ui-dialog-titlebar-close {
            left: 0.3em;
        }

        .ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset {
            float: none;
        }

        .ui-dialog .ui-dialog-buttonpane {
            text-align:left; /* left/center/right */
        }
    </style>--%>
</head>
<body class="no-skin">
    <form id="form1" runat="server">
        <uc1:UCHeader runat="server" ID="UCHeader" />
        <asp:ScriptManager ID="Scrpt" runat="server"></asp:ScriptManager>
        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try { ace.settings.loadState('main-container') } catch (e) { }
            </script>
            <uc1:UCSideBar runat="server" ID="UCSideBar" />
            <div class="main-content">
                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>
                        <div class="main-content-inner">
                            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                                <ul class="breadcrumb">
                                    <li>İşlemler</li>
                                    <li class="active">Firmalar</li>
                                </ul>
                            </div>
                            <div class="page-content">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <asp:Button runat="server" ID="Modalbutonn" class="btn btn-sm btn-success pull-right "
                                            Style="height: 38px; margin-bottom: 5px;" data-dismiss="modal" data-toggle="modal" data-target="#modal-table" Text="Yeni Firma Ekle" />
                                       


                                        <!--
                                        <button class="btn btn-sm btn-success pull-right " id="Modalbutonn"
                                            type="button" style="height: 38px; margin-bottom: 5px;" data-dismiss="modal" data-toggle="modal" data-target="#modal-table">
                                            <i class="ace-icon glyphicon-plus"></i>
                                            Yeni Firma Ekle
                                        </button>-->
                                        <br />
                                        <div id="modal-table" class="modal fade" tabindex="-1" style="display: none;">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header no-padding">
                                                        <div class="table-header" style="text-align: center;">
                                                            Firma Bilgilerini Giriniz
                                                        </div>
                                                    </div>
                                                    <div class="modal-body no-padding">
                                                        <div class="widget-body">
                                                            <div class="widget-main">
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>Firma Adı :</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:TextBox ID="txt_FirmName" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>Firma Açıklaması :</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:TextBox ID="txt_Firmowner" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>Sektör:</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:DropDownList ID="drpFirmSector" runat="server" class="form-control"></asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>İl:</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:DropDownList ID="drpFirmCity" runat="server" class="form-control" OnSelectedIndexChanged="drpFirmCity_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>İlçe:</b>
                                                                    </div>
                                                                    <asp:UpdatePanel runat="server" ID="upFirmCityDistrict" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <div class="col-xs-9">
                                                                                <asp:DropDownList ID="drpFirmCityDistrict" runat="server" class="form-control"></asp:DropDownList>
                                                                            </div>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>Adres:</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:TextBox ID="txt_Adress" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>Telefon:</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:TextBox ID="txt_Phone" runat="server" class="form-control" placeholder="0(xxx) xxx-xx-xx"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <b>E-mail:</b>
                                                                    </div>
                                                                    <div class="col-xs-9">
                                                                        <asp:TextBox ID="txt_Mail" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                </div>
                                                <div class="modal-footer no-margin-top">
                                                    <asp:Button class="btn btn-sm btn-success" runat="server" ID="SaveButton" OnClick="NewFirm_Click" Text="Kaydet"></asp:Button>
                                                    &nbsp;
                                            <asp:Button class="btn btn-sm btn-danger " runat="server" ID="CloseButton" Text="Çıkış"></asp:Button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12">
                                        <asp:Repeater runat="server" ID="FirmListRep">
                                            <HeaderTemplate>
                                                <table id="simple-table" class="table  table-bordered table-hover table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="col-xs-6">Firma Adı</th>
                                                            <th class="col-xs-4">Sektör</th>
                                                            <th class="col-xs-3">İşlem</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("NAME") %></td>
                                                    <td><%# Eval("TYPESEKTORNAME") %></td>
                                                    <td>
                                                        <div>
                                                            <a href="/Firm/FirmDetails.aspx?ID=<%# Eval("ID") %>" class="btn btn-white btn-success btn-bold">Detaya Git</a>
                                                            <%--<asp:LinkButton runat="server" ID="btnDefault" Text="Ayarlar"><i class="ace-icon fa fa-cog"></i></asp:LinkButton>--%>
                                                            <%--<a href="JavaScript:Void(0);" class="aDeneme"><i class="ace-icon fa fa-cog"></i></a>&nbsp;&nbsp;--%>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody>
                                        </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>

                                    <!--
                                    <div class="col-xs-12">
                                        <table id="simple-table" class="table  table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="col-xs-6">Firma Adı</th>
                                                    <th class="col-xs-4">Sektör</th>
                                                    <th class="col-xs-3">İşlem</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>A Firması</td>
                                                    <td>A Sektörü</td>
                                                    <td>
                                                        <div>
                                                            <asp:Button class="btn btn-white btn-success btn-bold" ID="butonclick" runat="server" Text="Detaylar"></asp:Button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>B Firması</td>

                                                    <td>B Sektörü</td>
                                                    <td>
                                                        <div>
                                                            <asp:Button class="btn btn-white btn-success btn-bold" ID="butonclick1" Text="Detaylar" runat="server"></asp:Button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>-->

                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <uc1:UCFooter runat="server" ID="UCFooter" />
        </div>
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
      

    </form>
    <script>
        $(function () {
            $("#butonclick").click(function () {
                window.location.assign("../Firm/FirmDetails.aspx");
            });
            $("#butonclick1").click(function () {
                window.location.assign("../Firm/FirmDetails.aspx");
            });
            //$("#SaveButton").click(function () {
            // window.location.assign("../Firm/FirmDetails.aspx");
            // })

            $("#CloseButton").click(function () {
                $("#modal-table").modal("hide");
            });
            $("#txt_Phone").mask("0(999) 999 - 99 - 99");

            //$("#aDeneme").fancybox({
            //    'width': '680px',
            //    'height': '495px',
            //    'autoScale': false,
            //    'transitionIn': 'none',
            //    'transitionOut': 'none',
            //    'type': 'iframe'
            //});


        });
        
    </script>
</body>
</html>
