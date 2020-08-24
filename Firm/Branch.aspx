<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Branch.aspx.cs" Inherits="OnlineReservation.Web.Firm.Branch" %>

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

    <script src="/assets/js/jquery-2.1.4.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>

  <%--  <script src="/boostrapjsler/bootstrap-confirmation.js"></script>
    <script src="/boostrapjsler/popper.js"></script>--%>

    <script>

        function OpenModal() {
            $("#modal-table5").modal('show');
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
                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
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
                                    <li>Şube</li>
                                </ul>
                            </div>
                            <div class="page-content">
                                <div class="row">
                                    <div id="modal-table" class="modal" tabindex="-1" role="dialog">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header no-padding">
                                                    <div class="table-header" style="text-align: center;">
                                                        Şube Bilgilerini Giriniz
                                                    </div>
                                                </div>
                                                <div class="modal-body no-padding">
                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>Firmanız :</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <span id="spFirmName"></span>
                                                                    <asp:Label runat="server" ID="lblFirmName"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>Şube Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranch" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer no-margin-top">
                                                    <button id="save" data-dismiss="modal" class="btn btn-sm btn-success">
                                                        <i class="ace-icon fa fa-check"></i>
                                                        Kaydet
                                                    </button>
                                                    &nbsp;
                                                        <button id="btnExitModal" class="btn btn-sm btn-danger  " data-dismiss="modal">
                                                            <i class="ace-icon fa fa-times"></i>
                                                            Çıkış
                                                        </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="modal-table5" class="modal fade" tabindex="-1" style="display: none;">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header no-padding">
                                                    <div class="table-header" style="text-align: center;">
                                                        Şube Bilgilerini GÜncelleyiniz:
                                                    </div>
                                                </div>
                                                <div class="modal-body no-padding">
                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>Şube Adı:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchName" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>Sektör:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpBranchSektor" runat="server" class="form-control"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>İl:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpBranchCity" runat="server" class="form-control" OnSelectedIndexChanged="drpBranchCity_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>İlçe:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:DropDownList ID="drpBranchDiscrit" runat="server" class="form-control"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>Adres:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchAdress" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>Telefon:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchPhone" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <div class="row">
                                                                <div class="col-xs-3">
                                                                    <b>E-mail:</b>
                                                                </div>
                                                                <div class="col-xs-9">
                                                                    <asp:TextBox ID="txtBranchMail" runat="server" class="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                            </div>
                                            <div class="modal-footer no-margin-top">
                                                <button class="btn btn-sm btn-success" id="SaveButton" data-dismiss="modal">Kaydet</button>
                                                &nbsp;
                                            <asp:Button class="btn btn-sm btn-danger " runat="server" ID="CloseButton" Text="İptal"></asp:Button>
                                            </div>
                                            <asp:Button runat="server" OnClick="btnUpdateSaveServer_Click" ID="btnUpdateSaveServer" Style="display: none" />
                                        </div>
                                    </div>

                                    <div class="col-xs-12 ">
                                        <div class="widget-box">
                                            <div class="widget-header">
                                                <h4 class="widget-title">Filtrele</h4>
                                                <asp:Button runat="server" ID="Modalbutonn" OnClick="Modalbutonn_Click" CssClass="btn btn-sm btn-success pull-right" Style="height: 38px;" Text="Yeni Şube Ekle"></asp:Button>
                                            </div>
                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <b>Firma Seçiniz:</b>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <asp:DropDownList runat="server" ID="drpFirm" CssClass="form-control"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <br />

                                                    <br />
                                                    <div class="row">
                                                        <div class="col-sm-8"></div>
                                                        <asp:Button CssClass="btn btn-success " runat="server" ID="btnList" OnClick="btnList_Click" Text="Listele"></asp:Button>
                                                    </div>
                                                    <div class="row">
                                                        <asp:Label runat="server" ID="LblSelected"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                    <div class="col-xs-12">
                                        <table id="simple-table" class="table  table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th class="col-xs-6">Firma ADI</th>
                                                    <th class="col-xs-4">Şube ADI</th>
                                                    <th class="col-xs-3">İşlem</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater runat="server" ID="rpBranchList" OnItemCommand="rpBranchList_ItemCommand">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("FIRMNAME") %></td>
                                                            <td><%# Eval("NAME") %></td>
                                                            <td>
                                                                <div>
                                                                    <div class=" btn-group">
                                                                        <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="modaltableset4" CommandName="Update" CommandArgument='<%# Eval("ID") %>'>
                                                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                        </asp:LinkButton>
                                                                        <asp:LinkButton ID="btnBranchDelete" runat="server"  CommandName="Delete" CommandArgument='<%# Eval("ID") %>' class="btn btn-xs btn-danger Deletebuton">
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
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:HiddenField ID="hdnLastBranchSelected" runat="server" />
                        <asp:HiddenField runat="server" ID="hdnBranchID" />
                        <asp:Button runat="server" OnClick="btnSaveBranch_Click" ID="btnSaveBranch" Style="display: none" />
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
                    $(".add-new-branch").click(function () {
                        $("#spFirmName").html($("#drpFirm :selected").text());
                        //$("#hdnFirmID").val($("#drpFirm :selected").val());
                        $("#modal-table").modal("show");
                        //document.getElementById('#drpFirm').value
                    });
                    $("#SaveButton").click(function () {
                        $("#btnUpdateSaveServer").click();
                    });

                    $("#txtBranchPhone").mask("(999) 999-99-99");

                    $("#save").click(function () {
                        $("#btnSaveBranch").click();
                    });
                    function CloseModal() {
                        $("#modal-table").modal('close');
                    }
                }
                endRequestHandler();
    </script>
</body>
</html>
