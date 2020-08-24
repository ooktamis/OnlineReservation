<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirmDetails.aspx.cs" Inherits="OnlineReservation.Web.Firm.FirmDetails" %>

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
        <asp:ScriptManager ID="Scrpt" runat="server"></asp:ScriptManager>
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
                                Firmalar
                            </li>
                            <li>
                                <a href="../Firm/FirmList.aspx">Firmalar</a>
                            </li>
                            <li>Firma Bilgisi
                            </li>
                        </ul>
                    </div>
                    <div class="page-content">
                        <div class="row">

                            <asp:UpdatePanel ID="upContent" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="col-xs-12 ">
                                        <div class="widget-box">
                                            <div class="widget-header">
                                                <h4 class="widget-title">Firma Bilgisi</h4>
                                                <asp:LinkButton ID="btnUpdate" runat="server" CssClass="btn btn-sm btn-success pull-right" OnClick="btnUpdate_Click">Güncelle</asp:LinkButton>
                                            </div>
                                            <div class="widget-body">
                                                <div class="widget-main">




                                                    <asp:Panel ID="pnlUpdate" runat="server" Visible="false">
                                                        <div class="row">
                                                            <div class="col-xs-1">
                                                                <b>Firma Adı:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:TextBox ID="txtFirmName" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>Sahibi:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:TextBox ID="txtFirmOwner" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-1">
                                                                <b>Sektör:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:DropDownList ID="drpFirmSector" runat="server" class="form-control"></asp:DropDownList>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>Telefon:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:TextBox ID="txtFirmPhone" runat="server" class="form-control" placeholder="0(xxx) xxx-xx-xx"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-1">
                                                                <b>İl:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:DropDownList ID="drpFirmCity" runat="server" class="form-control" OnSelectedIndexChanged="drpFirmCity_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>İlçe:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:DropDownList ID="drpFirmCityDistrict" runat="server" class="form-control"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-1">
                                                                <b>Adres:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:TextBox ID="txtFirmAddress" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>E-mail:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:TextBox ID="txtFirmEmail" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-12 text-right">
                                                                <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-warning btn-sm" OnClick="btnCancel_Click">İptal</asp:LinkButton>
                                                                <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-success btn-sm" OnClick="btnSave_Click">Kaydet</asp:LinkButton>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="pnlDisplay" runat="server">
                                                        <div class="row">
                                                            <div class="col-xs-1">
                                                                <b>Firma Adı:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmName" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>Sahibi:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmOwner" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-1">
                                                                <b>Sektör:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmSector" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>Telefon:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmPhone" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-1">
                                                                <b>İl:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmCity" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>İlçe:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmCityDistrict" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-xs-1">
                                                                <b>Adres:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmAddress" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="col-xs-1">
                                                                <b>E-mail:</b>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <asp:Label ID="lblFirmEmail" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>


                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                           <!--   <div class="col-xs-12">
                                <div id="modal-table6" class="modal fade" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header no-padding">
                                                <div class="table-header" style="text-align: center;">
                                                    Bölüm Bilgilerini Giriniz
                                                </div>
                                            </div>
                                            <div class="modal-body no-padding">
                                                <div class="widget-body">
                                                    <div class="widget-main">
                                                        <div class="row">
                                                            <div class="col-xs-3">
                                                                <b>Firma Adı:</b>
                                                            </div>
                                                            <div class="col-xs-9">
                                                                <asp:Label ID="lblDepartmentF" runat="server" class="form-control"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div class="row">
                                                            <div class="col-xs-3">
                                                                <b>Şube Seçiniz:</b>
                                                            </div>
                                                            <div class="col-xs-9">
                                                                <asp:DropDownList ID="drpDepartmentB" runat="server" class="form-control"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div class="row">
                                                            <div class="col-xs-3">
                                                                <b>Bölüm Adı:</b>
                                                            </div>
                                                            <div class="col-xs-9">
                                                                <asp:TextBox ID="txtDepartmentNa" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                        </div>
                                        <div class="modal-footer no-margin-top">
                                            <button class="btn btn-sm btn-success  " data-dismiss="modal">
                                                <i class="ace-icon fa fa-check"></i>
                                                Kaydet
                                            </button>
                                            &nbsp;
                                            <button class="btn btn-sm btn-danger  " data-dismiss="modal">
                                                <i class="ace-icon fa fa-times"></i>
                                                Çıkış
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>  -->
                            <!-- <div id="modal-table7" class="modal fade" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header no-padding">
                                            <div class="table-header" style="text-align: center;">
                                                Çalışan Bilgilerini Giriniz
                                            </div>
                                        </div>

                                        <div class="modal-body no-padding">
                                            <div class="widget-body">
                                                <div class="widget-main">

                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Firma Adı:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:Label ID="lblDepMemF" runat="server" class="form-control"></asp:Label>
                                                        </div>
                                                    </div>

                                                    <br />

                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Şube Seçiniz:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:DropDownList ID="drpDepMemB" runat="server" class="form-control"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Bölüm Seçiniz:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:DropDownList ID="drpDepMemD" runat="server" class="form-control"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <br />

                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Adı Soyadı:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:TextBox ID="txtDepMemNaSu" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <br />

                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Doğum Tarihi:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:TextBox ID="txtDepMemBirthday" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <br />

                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Cinsiyet:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:DropDownList ID="drpDepMemGender" runat="server" class="form-control">
                                                                <asp:ListItem>Seçiniz..</asp:ListItem>
                                                                <asp:ListItem>Kadın</asp:ListItem>
                                                                <asp:ListItem>Erkek</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>

                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Çalışma Durumu:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:DropDownList ID="drpDepMemStatus" runat="server" class="form-control">
                                                                <asp:ListItem>Seçiniz..</asp:ListItem>
                                                                <asp:ListItem>Aktif</asp:ListItem>
                                                                <asp:ListItem>Pasif</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Telefon</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:TextBox ID="drpDepMemPhone" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>E-mail:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:TextBox ID="drpDepMemEmail" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Şifre:</b>
                                                        </div>
                                                        <div class="col-xs-9">
                                                            <asp:TextBox ID="textbox31" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <br />
                                                </div>

                                            </div>
                                        </div>

                                        <div class="modal-footer no-margin-top">
                                            <button class="btn btn-sm btn-success " data-dismiss="modal">
                                                <i class="ace-icon fa fa-check"></i>
                                                Kaydet
                                            </button>
                                            &nbsp;
                                                <button class="btn btn-sm btn-danger " data-dismiss="modal">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    Çıkış
                                                </button>
                                        </div>
                                    </div>
                                </div>
                            </div> -->

                            <div id="mdlNewBranch" class="modal fade" tabindex="-1">
                                <asp:UpdatePanel runat="server" ID="upMdlNewBranch" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header no-padding">
                                                    <div class="table-header" style="text-align: center;">
                                                        Şube Bilgilerini
                                                        <asp:Literal runat="server" ID="lblBranchIsUpdate"></asp:Literal>
                                                    </div>
                                                </div>
                                                <div class="modal-body no-padding">
                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Firma Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:Label ID="lblBranchF" runat="server" class="form-control"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Şube Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchName" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>İl:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpBranchC" runat="server" class="form-control" OnSelectedIndexChanged="drpBranchC_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>İlçe:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpBranchCD" runat="server" class="form-control"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Adresi:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchAddr" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Telefon:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchPho" runat="server" class="form-control" placeholder="0(xxx) xxx-xx-xx"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>E-mail:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchEm" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer no-margin-top">
                                                <button id="btnAddBranchClient" data-dismiss="modal" class="btn btn-success btn-sm"><i class="ace-icon fa fa-check"></i>Kaydet</button>
                                                <button class="btn btn-sm btn-warning" data-dismiss="modal">İptal</button>
                                                <asp:Button ID="btnAddBranch" runat="server" OnClick="btnAddBranch_Click" Style="display: none;" />
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="mdlNewDepartment" class="modal fade" tabindex="-1">
                                <asp:UpdatePanel runat="server" ID="upMdlNewDepartment" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header no-padding">
                                                    <div class="table-header" style="text-align: center;">
                                                        Bölüm Bilgilerini 
                                                        <asp:Literal runat="server" ID="lblDepartmentIsUpdate"></asp:Literal>
                                                    </div>
                                                </div>
                                                <div class="modal-body no-padding">
                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Firma Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:Label ID="lblDepF" runat="server" class="form-control"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10 ">
                                                                <div class="col-xs-3">
                                                                    <b>Şube Seçiniz:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpDepBranch" runat="server" class="form-control"></asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Bölüm Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepName" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="modal-footer no-margin-top">
                                                <button id="btnAddDepartmentClient" data-dismiss="modal" class="btn btn-success btn-sm"><i class="ace-icon fa fa-check"></i>Kaydet</button>
                                                <button class="btn btn-sm btn-warning" data-dismiss="modal">İptal</button>
                                                <asp:Button ID="btnAddDepartment" runat="server" OnClick="btnAddDepartment_Click" Style="display: none;" />
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="mdlNewDepartmentMember" class="modal fade" tabindex="-1">
                                <div class="modal-dialog">
                                    <asp:UpdatePanel runat="server" ID="upMdlNewDepartmentMember" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="modal-content">
                                                <div class="modal-header no-padding">
                                                    <div class="table-header" style="text-align: center;">
                                                        Çalışan Bilgilerini 
                                                <asp:Literal runat="server" ID="lblDepartmentMemberIsUpdate"></asp:Literal>
                                                    </div>
                                                </div>

                                                <div class="modal-body no-padding">
                                                    <div class="widget-body">
                                                        <div class="widget-main">

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Firma Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:Label ID="lblDepMemberF" runat="server" class="form-control"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Şube Seçiniz:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpDepMemberBranch" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="drpDepMemberBranch_SelectedIndexChanged"></asp:DropDownList>

                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Bölüm Seçiniz:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpDepMemberDepartment" runat="server" class="form-control"></asp:DropDownList>
                                                                </div>
                                                            </div>


                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepMemberName" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Soyadı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepMemberSurname" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Doğum Tarihi:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepMemberBirthday" runat="server" class="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                                                                </div>
                                                            </div>


                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Cinsiyet:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpDepMemberGender" runat="server" class="form-control">
                                                                        <asp:ListItem>Seçiniz..</asp:ListItem>
                                                                        <asp:ListItem Value="0">Erkek</asp:ListItem>
                                                                        <asp:ListItem Value="1">Kadın</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>

                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Çalışma Durumu:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpDepMemberStatus" runat="server" class="form-control">
                                                                        <asp:ListItem>Seçiniz..</asp:ListItem>
                                                                        <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                                        <asp:ListItem Value="1">Aktif</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Telefon</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepMemberTelephone" runat="server" class="form-control" placeholder="0(xxx) xxx-xx-xx"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>E-mail:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepMemberEmail" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row mt-10">
                                                                <div class="col-xs-3">
                                                                    <b>Şifre:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtDepMemberPassword" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer no-margin-top">
                                                    <button id="btnAddDepartmentMemberClient" data-dismiss="modal" class="btn btn-success btn-sm"><i class="ace-icon fa fa-check"></i>Kaydet</button>
                                                    <button class="btn btn-sm btn-warning" data-dismiss="modal">İptal</button>
                                                    <asp:Button ID="btnAddDepartmentMember" runat="server" OnClick="btnAddDepartmentMember_Click" Style="display: none;" />
                                                </div>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>

                            <div class="col-xs-12">
                                <div class="tabbable">
                                    <ul class="nav nav-tabs padding-12 tab-color-blue background-blue tab-activator" id="myTab4">
                                        <li class="active">
                                            <a data-toggle="tab" href="#tbBranch">Şubeler</a>
                                        </li>

                                        <li>
                                            <a data-toggle="tab" href="#tbDepartment">Bölümler</a>
                                        </li>

                                        <li>
                                            <a data-toggle="tab" href="#tbDepartmentMember">Çalışanlar</a>
                                        </li>
                                        <li>
                                            <a data-toggle="tab" href="#tbtime">Çalışma Zamanları</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content">

                                        <div id="tbBranch" class="tab-pane in active">
                                            <asp:UpdatePanel ID="upBranchModal" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <h4 class="pink">
                                                        <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                                                        <asp:LinkButton runat="server" ID="btnNewBranch" CssClass="green" OnClick="btnNewBranch_Click">Yeni Şube Ekle </asp:LinkButton>
                                                        <%--<a href="#mdlNewBranch" role="button" class="green" data-toggle="modal">Yeni Şube Ekle </a>--%>
                                                    </h4>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <asp:UpdatePanel ID="upBranch" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="simple-table" class="table  table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th class="col-xs-4">Şube Adı</th>
                                                                <th class="col-xs-2">İşlem</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater runat="server" ID="rpFirmBranchList" OnItemCommand="rpFirmBranchList_ItemCommand">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td><%# Eval("NAME") %></td>

                                                                        <td>
                                                                            <div>
                                                                                <div class=" btn-group">
                                                                                    <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="mdlUpdateBranch" CommandName="Update" CommandArgument='<%# Eval("ID") %>'>
                                                                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                                    </asp:LinkButton>
                                                                                    <asp:LinkButton ID="mdlDeleteBranch" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' class="btn btn-xs btn-danger Deletebuton">
                                                                                          <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                                    </asp:LinkButton>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>


                                        </div>

                                        <div id="tbDepartment" class="tab-pane">

                                            <asp:UpdatePanel ID="upDepartmentModal" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <h4 class="pink">
                                                        <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                                                        <asp:LinkButton runat="server" ID="btnNewDepartment" CssClass="green" OnClick="btnNewDepartment_Click">Yeni Bölüm Ekle </asp:LinkButton>
                                                        <%--<a href="#mdlNewDepartment" role="button" class="green" data-toggle="modal">Yeni Bölüm Ekle </a>--%>
                                                    </h4>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <asp:UpdatePanel ID="upDepartment" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="simple-table1" class="table  table-bordered table-hover  ">
                                                        <thead>

                                                            <tr style="color: #669FC7">
                                                                <th>Şube Adı</th>
                                                                <th>Bölüm Adı</th>
                                                                <th>İşlem</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater runat="server" ID="rpFirmDepartmentList" OnItemCommand="rpFirmDepartmentList_ItemCommand">
                                                                <ItemTemplate>

                                                                    <tr>
                                                                        <td><%# Eval("FIRMBRANCHNAME") %></td>
                                                                        <td><%# Eval("NAME") %></td>
                                                                        <td>

                                                                            <div>
                                                                                <div class=" btn-group">
                                                                                    <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="mdlUpdateDepartment" CommandName="Update" CommandArgument='<%# Eval("ID") %>'>
                                                                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                                    </asp:LinkButton>
                                                                                    <asp:LinkButton ID="mdlDeleteDepartment" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' class="btn btn-xs btn-danger Deletebuton">
                                                                                          <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                                    </asp:LinkButton>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>

                                        <div id="tbDepartmentMember" class="tab-pane">
                                            <asp:UpdatePanel ID="upDepartmentMemberModal" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>

                                                    <h4 class="pink">
                                                        <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                                                        <asp:LinkButton runat="server" ID="btnNewDepartmentMember" CssClass="green" OnClick="btnNewDepartmentMember_Click">Yeni Çalışan Ekle </asp:LinkButton>

                                                    </h4>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <asp:UpdatePanel ID="upDepartmentMember" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="simple-table2" class="table  table-bordered table-hover  ">
                                                        <thead>
                                                            <tr style="color: #669FC7">
                                                                <th>Şube Adı</th>
                                                                <th>Bölüm Adı</th>
                                                                <th>Çalışan Adı</th>
                                                                <th>İşlem</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater runat="server" ID="rpFirmDepMemberList" OnItemCommand="rpFirmDepMemberList_ItemCommand">
                                                                <ItemTemplate>

                                                                    <tr>
                                                                        <td><%# Eval("FIRMBRANCHNAME") %></td>
                                                                        <td><%# Eval("FIRMDEPARTMENTNAME") %></td>
                                                                        <td><%# Eval("FULLNAME") %></td>
                                                                        <td>
                                                                            <div>
                                                                                <div class=" btn-group">
                                                                                    <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="mdlUpdateDepartmentMember" CommandName="Update" CommandArgument='<%# Eval("ID") %>'>
                                                                                          <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                                    </asp:LinkButton>
                                                                                    <asp:LinkButton ID="mdlDeleteDepartmentMember" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' class="btn btn-xs btn-danger Deletebuton">
                                                                                          <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                                    </asp:LinkButton>


                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>

                                        <div id="tbtime" class="tab-pane">
                                            <div class="styls">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <div style="margin-left: 15px;">
                                                                <asp:Label runat="server" for="timepickerstart">Randevu Günleri</asp:Label>
                                                                <br />
                                                                <div  >
                                                                       <asp:DropDownList runat="server" ID="drpDays" style="width: 272px;">
                                                                           <asp:ListItem Value="0" >Seçiniz</asp:ListItem>
                                                                           <asp:ListItem Value="1" >Pazartesi</asp:ListItem>
                                                                           <asp:ListItem Value="2" >Salı</asp:ListItem>
                                                                           <asp:ListItem Value="3" >Çarşamba</asp:ListItem>
                                                                           <asp:ListItem Value="4" >Perşembe</asp:ListItem>
                                                                           <asp:ListItem Value="5" >Cuma</asp:ListItem>
                                                                           <asp:ListItem Value="6" >Cumartesi</asp:ListItem>
                                                                           <asp:ListItem Value="7" >Pazar</asp:ListItem>
                                                                       </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div style="margin-left: 15px;">
                                                                <asp:Label runat="server" for="timepickerstart">Başlangıç Saati</asp:Label>
                                                                <br />
                                                                <div class="input-group bootstrap-timepicker col-xs-6" style="width: 272px;">

                                                                    <asp:TextBox ID="timepickerstart" runat="server" CssClass="form-control  timepickers"></asp:TextBox>

                                                                    <span class="input-group-addon">
                                                                        <i class="fa fa-clock-o bigger-110"></i>
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div style="margin-left: 15px;">
                                                                <asp:Label runat="server" for="timepickerend">Bitiş Saati </asp:Label>
                                                                <div class="input-group bootstrap-timepicker col-xs-6" style="width: 272px;">

                                                                    <asp:TextBox ID="timepickerend" runat="server" CssClass="form-control timepickers"></asp:TextBox>

                                                                    <span class="input-group-addon">
                                                                        <i class="fa fa-clock-o bigger-110"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div style="margin-left: 15px;">
                                                                <asp:Label runat="server" for="timepickerend">Randevu Saat Aralığı </asp:Label>
                                                                <div class="input-group bootstrap-timepicker col-xs-6" style="width: 272px;">

                                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control timepickers"></asp:TextBox>

                                                                    <span class="input-group-addon">
                                                                        <i class="fa fa-clock-o bigger-110"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="btnmdl2save" CssClass="btn btn-sm btn-success " runat="server"  style="margin-top: 15px;" Text="Kaydet" OnClick="btnmdl2save_Click">
                                                              
                                                            </asp:Button>

                                                        </td>
                                                        <td>
                                                            <button id="btnmdl2Exit" class="btn btn-sm btn-danger  " style="margin-top: 15px;">
                                                                <i class="ace-icon fa fa-times"></i>
                                                                Çıkış
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>

                                    </div>
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
    <script type="text/javascript">

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler); //javascripti öldürmüyor yoketmiyor  bastığımız tuyşa göre sayfayı getiriyor bu kodları çalıştırıyor

        function endRequestHandler() {
            $(".tab-activator a").click(function () {
                $(".tab-pane.active").removeClass("active");
                $($(this).attr("href")).addClass("active");
            });

            //   $(".branch-modal-activator").click(function () {
            //     $("#hdnLastBranchSelected").val($(this).attr("branch-id"));
            //    $("#btnGetBranch").click();
            //   $("#modal-table").modal("show");
            //  });

            $("#btnSaveUpdateBranch").click(function () {
                $("#btnUpdateBranch").click();
            });

            $("#btnAddBranchClient").click(function () {
                $("#btnAddBranch").click();
            });

            $("#btnAddDepartmentClient").click(function () {
                $("#btnAddDepartment").click();
            });
            $("#btnAddDepartmentMemberClient").click(function () {
                $("#btnAddDepartmentMember").click();
            });

            jQuery(function ($) {
                $('.date-picker').datepicker({
                    autoclose: true,
                    todayHighlight: true
                })

                    .next().on(ace.click_event, function () {
                        $(this).prev().focus();
                    });
                $('input[name=date-range-picker]').daterangepicker({
                    'applyClass': 'btn-sm btn-success',
                    'cancelClass': 'btn-sm btn-default',
                    locale: {
                        applyLabel: 'Apply',
                        cancelLabel: 'Cancel',
                    }
                })
                $('.timepickers').timepicker({
                    minuteStep: 1,
                    showSeconds: true,
                    showMeridian: false,
                    disableFocus: true,
                    icons: {
                        up: 'fa fa-chevron-up',
                        down: 'fa fa-chevron-down'
                    }
                }).on('focus', function () {
                    $('.timepickers').timepicker('showWidget');
                }).next().on(ace.click_event, function () {
                    $(this).prev().focus();
                });
                //postback oluyor bakılacak.

            });


            //jQuery(function ($) {

            //    $(".Deletebuton").click(function () {
            //        $('.Kaldir').empty();
            //    });
            //    $(".Deletebuton2").click(function () {
            //        $('.Kaldir2').empty();
            //    });
            //    $(".Deletebuton3").click(function () {
            //        $('.Kaldir3').empty();
            //    });
            //    $(".Deletebuton4").click(function () {
            //        $('.Kaldir4').empty();
            //    });
            //    $("#SaveButton").click(function () {
            //        window.location.assign("../Firm/FirmDetails.aspx");
            //    })
            //    $("#Button1").click(function () {
            //        alert("Başarı  İle Kaydedildi.");
            //        window.location.assign("../Firm/FirmDetails.aspx");
            //    })
            //    $("#CloseButton").click(function () {
            //        $("#mdlFirmBranch").modal('hide');
            //    });
            //    $("#CloseButton").click(function () {
            //        $("#modal-table").modal("hide");
            //    });


            //    $("#DeletButton").click(function () {
            //        $("#modal-table").modal('close');
            //    });
            //})



        }
        endRequestHandler();
    </script>
</body>
</html>
