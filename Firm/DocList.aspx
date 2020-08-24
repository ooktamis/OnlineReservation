<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocList.aspx.cs" Inherits="OnlineReservation.Web.Firm.DocList" %>


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
            $("#updatemodal").modal('show');
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

                                    <li>İşlemler
                                    </li>
                                    <li class="active">Çalışanlar</li>
                                </ul>
                            </div>


                            <div class="page-content">
                                <div class="row">
                                    <div class="col-xs-12">


                                        <div id="New-working" class="modal fade" tabindex="-1">
                                            <asp:UpdatePanel runat="server" ID="upNewDepartment" UpdateMode="Conditional">
                                                <ContentTemplate>
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
                                                                                <b>Firma Seçimi:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <span id="spFirmName"></span>
                                                                                <asp:Label runat="server" ID="lblmdlFirm"></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                        <div runat="server" id="dvmdlDoclist">
                                                                            <br />

                                                                            <div class="row">
                                                                                <div class="col-xs-3">
                                                                                    <b>Şube Seçimi:</b>
                                                                                </div>
                                                                                <div class="col-xs-9">
                                                                                    <span id="spBranchName"></span>
                                                                                    <asp:Label runat="server" ID="lblmdlBranch"></asp:Label>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Bölüm Seçimi:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <span id="spDepartmentName"></span>
                                                                                <asp:Label runat="server" ID="lblmdlDepartment"></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                        <br />

                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Adı :</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtmdlName" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Soyadı :</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtmdlSurname" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />

                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Doğum Tarihi:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtmdlBirtday" runat="server" class="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />

                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Cinsiyet:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:DropDownList ID="drpmdlGender" runat="server" class="form-control">
                                                                                    <asp:ListItem Value="0">Bay</asp:ListItem>
                                                                                    <asp:ListItem Value="1">Bayan</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Çalışma Durumu:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:DropDownList ID="dropmdlcd" runat="server" class="form-control">
                                                                                    <asp:ListItem Value="0">Aktif</asp:ListItem>
                                                                                    <asp:ListItem Value="1">Pasif</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Pozisyon :</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:DropDownList ID="drpmdltypmember" runat="server" class="form-control">
                                                                                    <asp:ListItem>Seçiniz..</asp:ListItem>
                                                                                    <asp:ListItem Value="1">Kullanıcı</asp:ListItem>
                                                                                    <asp:ListItem Value="2">Departman Çalışanı</asp:ListItem>
                                                                                    <asp:ListItem Value="3">Firma Sorumlusu</asp:ListItem>
                                                                                    
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Telefon</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtmdlPhone" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>E-mail:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtmdlMail" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                        <div class="row">
                                                                            <div class="col-xs-3">
                                                                                <b>Şifre:</b>
                                                                            </div>
                                                                            <div class="col-xs-9">
                                                                                <asp:TextBox ID="txtmdlPassword" runat="server" class="form-control"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <br />
                                                                    </div>

                                                                </div>
                                                            </div>

                                                            <div class="modal-footer no-margin-top">

                                                                <%--<asp:LinkButton class="btn btn-sm btn-success " data-dismiss="modal" ID="mdlSave" runat="server" OnClick="mdlSave_Click">
                                                            <i class="ace-icon fa fa-check"></i>
                                                            Kaydet
                                                        </asp:LinkButton>--%>
                                                                <asp:LinkButton ID="btnSaveFirmDepartmentMember" runat="server" CssClass="btn btn-sm btn-success" OnClick="btnSaveFirmDepartmentMember_Click">Kaydet</asp:LinkButton>
                                                                &nbsp;
                                                <button class="btn btn-sm btn-danger " data-dismiss="modal" id="mdlCancel">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    Çıkış
                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </div>
                                        <br />
                                        <div class="col-xs-12 ">
                                            <div class="widget-box">
                                                <div class="widget-header">
                                                    <h4 class="widget-title">Filtrele</h4>
                                                    <%--<button class="btn btn-sm btn-success pull-right add-new-branch" id="NewWorking"
                                                        type="button" style="height: 38px;" data-dismiss="modal" data-toggle="modal" data-target="#New-working">
                                                        <i class="ace-icon glyphicon-plus"></i>
                                                        
                                                    </button>--%>
                                                    <asp:Button runat="server" ID="btnNewWorking" CssClass="btn btn-sm btn-success pull-right add-new-branch"
                                                        Style="height: 38px;" Text="Yeni Çalışan Ekle" OnClick="btnNewWorking_Click" />

                                                </div>
                                                <div class="widget-body">
                                                    <div class="widget-main">
                                                        <div class="row">
                                                            <div class="col-xs-2">
                                                                <b>Firma Seçiniz:</b>
                                                            </div>
                                                            <div class="col-xs-4">
                                                                <asp:DropDownList ID="DrpFirm" runat="server" class="form-control" OnSelectedIndexChanged="DrpFirm_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                            </div>
                                                            <div runat="server" id="dvDocList">
                                                                <div class="col-xs-2">
                                                                    <b>Şube Seçiniz:</b>
                                                                </div>
                                                                <div class="col-xs-4">
                                                                    <asp:DropDownList ID="DrpBranch" runat="server" class="form-control" OnSelectedIndexChanged="DrpBranch_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <br />
                                                        <div class="row">
                                                            <div runat="server" id="dvDoclistDeparment">
                                                                <div class="col-xs-2">
                                                                    <b>Bölüm Seçiniz :</b>
                                                                </div>
                                                                <div class="col-xs-4">
                                                                    <asp:DropDownList ID="DrpDepartment" runat="server" class="form-control"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-11"></div>
                                                            <asp:Button CssClass="btn btn-success " runat="server" ID="btnList" OnClick="btnList_Click" Text="Listele"></asp:Button>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="updatemodal" class="modal fade" tabindex="-1">
                                                    <asp:UpdatePanel runat="server" ID="upModalUpdate" UpdateMode="Conditional">
                                                        <ContentTemplate>
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                    <div class="modal-header no-padding">
                                                                        <div class="table-header" style="text-align: center;">
                                                                            <asp:Label runat="server" ID="lblPersonel"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-body no-padding">
                                                                        <div class="widget-body">
                                                                            <div class="widget-main">
                                                                                <div class="row">
                                                                                    <div class="col-xs-3">
                                                                                        <b>Firma Seçimi :</b>
                                                                                    </div>
                                                                                    <div class="col-xs-6">
                                                                                        <asp:Label ID="lblFirmUpdate" runat="server" class="form-control"></asp:Label>
                                                                                    </div>
                                                                                </div>
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="col-xs-3">
                                                                                        <b>Şube Seçimi:</b>
                                                                                    </div>
                                                                                    <div class="col-xs-6">
                                                                                        <asp:Label ID="lblBranchUpdate" runat="server" class="form-control"></asp:Label>
                                                                                    </div>
                                                                                </div>
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="col-xs-3">
                                                                                        <b>Bölüm Seçimi :</b>
                                                                                    </div>
                                                                                    <div class="col-xs-6">
                                                                                        <asp:DropDownList ID="DrpDepartmentUpdate" runat="server" class="form-control"></asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="col-xs-3">
                                                                                        <b>Çalışma Durumu:</b>
                                                                                    </div>
                                                                                    <div class="col-xs-6">
                                                                                        <asp:DropDownList ID="DrpcdUpdate" runat="server" class="form-control">
                                                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                                                            <asp:ListItem Value="1">Aktif</asp:ListItem>
                                                                                            <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer no-margin-top">
                                                                        <button class="btn btn-sm btn-success  " data-dismiss="modal" id="btnUpdate">
                                                                            <i class="ace-icon fa fa-check"></i>
                                                                            Kaydet
                                                                        </button>
                                                                        &nbsp;
                                            <button class="btn btn-sm btn-danger  " data-dismiss="modal">
                                                <i class="ace-icon fa fa-times"></i>
                                                Çıkış
                                            </button>
                                                                    </div>
                                                                    <asp:Button runat="server" OnClick="btnUpdateSaveServer_Click" ID="btnUpdateSaveServer" Style="display: none" />
                                                                </div>
                                                            </div>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                            <br />
                                        </div>



                                        <div class="col-xs-12">
                                            <asp:UpdatePanel runat="server" ID="upDepartmentList" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="dynamic-table" class="table  table-bordered table-hover table-striped">
                                                        <thead>
                                                            <tr>
                                                                <%--<th class="col-xs-3">Firma ADI</th>--%>
                                                                <th class="col-xs-2">Şube ADI</th>
                                                                <th class="col-xs-2">Bölüm Adı</th>
                                                                <th class="col-xs-3">Personel</th>
                                                                <th class="col-xs-2">Personel Telefon</th>
                                                                <th class="col-xs-2">Personel Mail</th>
                                                                <th class="col-xs-1">Detaylar</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater runat="server" ID="rpWorkingList" OnItemCommand="rpWorkingList_ItemCommand">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <%--<td><%# Eval("FIRMNAME") %></td>--%>
                                                                        <td><%# Eval("FIRMBRANCHNAME") %></td>
                                                                        <td><%# Eval("FIRMDEPARTMENTNAME") %></td>
                                                                        <td><%# Eval("FULLNAME") %></td>
                                                                        <td><%# Eval("PHONE") %></td>
                                                                        <td><%# Eval("LOGINNAME") %></td>
                                                                        <td>
                                                                            <div>
                                                                                <div class=" btn-group">
                                                                                    <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="btnupdate"
                                                                                        CommandName="Update" CommandArgument='<%# Eval("ID") %>'>
                                                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                                    </asp:LinkButton>
                                                                                    <asp:LinkButton ID="btnBranchDelete" runat="server"
                                                                                        CommandName="Delete" CommandArgument='<%# Eval("MEMBERID") %>' class="btn btn-xs btn-danger Deletebuton">
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

                        </div>
                        <asp:HiddenField runat="server" ID="hdnDepartmentID" />
                        <asp:Button runat="server" OnClick="btnSaveBranch_Click" ID="btnSaveBranch" Style="display: none" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <uc1:UCFooter runat="server" ID="UCFooter" />
        </div>
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    </form>
    <script type="text/javascript">
                Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
                function endRequestHandler() {
                    $("#btnSaveFirmDepartmentMember").click(function () {
                        $("#btnSaveBranch").click();
                    });
                    $("#btnUpdate").click(function () {
                        $("#btnUpdateSaveServer").click();
                    });


                    $(".add-new-branch").click(function () {
                        $("#spFirmName").html($("#DrpFirm :selected").text());
                        $("#spBranchName").html($("#DrpBranch :selected").text());
                        $("#spDepartmentName").html($("#DrpDepartment :selected").text());

                    });

                    $("#txtmdlPhone").mask("(9999) 999-99-99");
                   $('#dynamic-table').DataTable({
                           bAutoWidth: false,
                           "aoColumns": [
                               {'sType': 'turkish'},
                               {'sType': 'turkish'},
                               {'sType': 'turkish'},
                               {'sType': 'turkish'},
                               {'sType': 'turkish'},
                               { "bSortable": false }
                           ],
                           "aaSorting": [],
                      });
                }
                endRequestHandler();


    </script>
</body>
</html>
