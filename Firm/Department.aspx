<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="OnlineReservation.Web.Firm.Department" %>

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

    <script>
        function OpenModal() {
            $("#mdlUpdate").modal('show');
        }
    </script>
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
                                    <li>
                                        <i class="ace-icon fa fa-home home-icon"></i>
                                        <a href="../Default.aspx">Anasayfa</a>
                                    </li>
                                    <li>İşlemler
                                    </li>
                                    <li>Bölüm</li>
                                </ul>

                            </div>
                            <div class="page-content">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div id="mdlNewDepartment" class="modal fade" tabindex="-1">
                                            <asp:UpdatePanel runat="server" ID="upNewDepartment" UpdateMode="Conditional">
                                                <ContentTemplate>
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
                                                                                <b>Firma:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <span id="spFirmName"></span>
                                                                                <asp:Label runat="server" ID="lblmdlFirm"></asp:Label>
                                                                                <%--<asp:Label ID="txtmdlFirm" runat="server" class="form-control"></asp:Label>--%>
                                                                            </div>
                                                                        </div>
                                                                        <div id="dvShowLblBranch" runat="server">
                                                                            <br />
                                                                            <div class="row">
                                                                                <div class="col-xs-3">
                                                                                    <b>Şube Seçiniz:</b>
                                                                                </div>
                                                                                <div class="col-xs-9">
                                                                                    <span id="spBranchName"></span>
                                                                                    <asp:Label runat="server" ID="lblmdlBranch"></asp:Label>
                                                                                    <%--<asp:Label ID="txtmdlBranch" runat="server" class="form-control"></asp:Label>--%>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Bölüm Adı:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtDepartment" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <br />
                                                        </div>
                                                        <div class="modal-footer no-margin-top">
                                                            <button class="btn btn-sm btn-success  " data-dismiss="modal" id="saveBranch">
                                                                <i class="ace-icon fa fa-check"></i>
                                                                Kaydet
                                                            </button>
                                                            &nbsp;
                                            <button class="btn btn-sm btn-danger  " data-dismiss="modal" id="btnCloseClick">
                                                <i class="ace-icon fa fa-times"></i>
                                                Çıkış
                                            </button>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-xs-12">
                                        <div id="mdlUpdate" class="modal fade" tabindex="-1">
                                            <asp:UpdatePanel runat="server" ID="upModalUpdate" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header no-padding">
                                                                <div class="table-header" style="text-align: center;">
                                                                    Bölüm Bilgilerini Güncelleyin
                                                                </div>
                                                            </div>
                                                            <div class="modal-body no-padding">
                                                                <div class="widget-body">
                                                                    <div class="widget-main">
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Firma Seçiminiz :</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:Label ID="txtUpdateFirm" runat="server" class="form-control"></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Şube Seçiminiz:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:Label ID="txtUpdateBranch" runat="server" class="form-control"></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Bölüm Adı:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtUpdateDeparment" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <br />
                                                        </div>
                                                        <div class="modal-footer no-margin-top">
                                                            <button class="btn btn-sm btn-success  " data-dismiss="modal" id="btnUpdateSave">
                                                                <i class="ace-icon fa fa-check"></i>
                                                                Kaydet
                                                            </button>
                                                            &nbsp;
                                                            <button class="btn btn-sm btn-danger  " data-dismiss="modal" id="btnUptadeCancel">
                                                                <i class="ace-icon fa fa-times"></i>
                                                                Çıkış
                                                            </button>
                                                        </div>
                                                        <asp:Button runat="server" OnClick="btnUpdateSaveServer_Click" ID="btnUpdateSaveServer" Style="display: none" />
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 ">
                                        <div class="widget-box">
                                            <div class="widget-header">
                                                <h4 class="widget-title">Filtrele</h4>
                                                <asp:Button runat="server" ID="btnNewDepartment" OnClick="btnNewDepartment_Click" class="btn btn-sm btn-success pull-right"
                                                    Style="height: 38px;" Text="Yeni Bölüm Ekle" />
                                                <%--<button class="btn btn-sm btn-success pull-right add-new-branch" id="Modalbutonn"
                                                    type="button" style="height: 38px;" data-dismiss="modal" data-toggle="modal" data-target="#mdlNewDepartment">
                                                    <i class="ace-icon glyphicon-plus"></i>
                                                    Yeni Bölüm Ekle
                                                </button>--%>
                                            </div>
                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Firma Seçiniz:</b>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <asp:DropDownList ID="drpFirms" runat="server" class="form-control" OnSelectedIndexChanged="drpFirms_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div id="dvBranch" runat="server">
                                                            <div class="col-xs-3">
                                                                <b>Şube Seçiniz:</b>
                                                            </div>
                                                            <div class="col-xs-6">
                                                                <asp:DropDownList ID="drpBranch" runat="server" class="form-control"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-sm-8"></div>
                                                        <asp:Button CssClass="btn btn-success " runat="server" ID="buton" OnClick="NewDepartment_Click" Text="Listele"></asp:Button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                    <div class="col-xs-12">
                                        <asp:UpdatePanel runat="server" ID="upDepartmentList" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <table id="simple-table" class="table  table-bordered table-hover table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="col-xs-3">Firma ADI</th>
                                                            <th class="col-xs-3">Şube ADI</th>
                                                            <th class="col-xs-3">Bölüm Adı</th>
                                                            <th class="col-xs-3">İşlem</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater runat="server" ID="rpDepartmentList" OnItemCommand="rpDepartmentList_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td><%# Eval("FIRMNAME") %></td>
                                                                    <td><%# Eval("FIRMBRANCHNAME") %></td>
                                                                    <td><%# Eval("NAME") %></td>
                                                                    <td>
                                                                        <div>
                                                                            <div class=" btn-group">
                                                                                <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="modaltableset4"
                                                                                    CommandName="Update" CommandArgument='<%# Eval("ID") %>'>
                                                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                                </asp:LinkButton>
                                                                                <asp:LinkButton ID="btnBranchDelete" runat="server"
                                                                                    CommandName="Delete" CommandArgument='<%# Eval("ID") %>' class="btn btn-xs btn-danger Deletebuton">
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
                                </div>
                            </div>
                        </div>
                        <asp:HiddenField runat="server" ID="hdnDepartmentID" />
                        <asp:Button runat="server" OnClick="btnSaveBranch_Click" ID="btnSaveBranch" Style="display: none" />
                        <asp:Button runat="server" OnClick="btnCloseBranch_Click" ID="btnCloseBranch" Style="display: none" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <uc1:UCFooter runat="server" ID="UCFooter" />
        </div>
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    </form>
    <script>

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
        function endRequestHandler() {

            $("#saveBranch").unbind().click(function () {
                $("#btnSaveBranch").click();
            });
            $("#btnCloseClick").unbind().click(function () {
                $("#btnCloseBranch").click();
            });

            $("#btnUpdateSave").click(function () {
                $("#btnUpdateSaveServer").click();
            });

            //$(".add-new-branch").click(function () {
            //    $("#spFirmName").html($("#drpFirms :selected").text());
            //    $("#spBranchName").html($("#drpBranch :selected").text());
            //    //$("#hdnFirmID").val($("#drpFirm :selected").val());
            //    $("#modal-table").modal("show");
            //    //document.getElementById('#drpFirm').value
            //});

            //$(".Deletebuton").click(function () {
            //    $('.Kaldir').empty();
            //});
            //$("#buton").click(function () {

            //    $(".subelistesi").show();

            //});
            //$("#CloseButton").click(function () {
            //    $("#modal-table5").modal("hide");
            //});
            //$("#SaveButton").click(function () {
            //    window.location.assign("../Firm/FirmDetails.aspx");
            //})
        }
        endRequestHandler();
    </script>
</body>
</html>
