<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GovernancePage.aspx.cs" Inherits="OnlineReservation.Web.Governance.GovernancePage" %>

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
                                Firmalar
                            </li>
                            <li>
                                <a href="#FirmList.aspx">Firma</a>
                            </li>
                            <li>
                               Firma Bilgisi
                           </li>
                        </ul>
                    </div>
                    <div class="col-xs-12">
										<div class="tabbable">
											<ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
												<li class="active">
													<a data-toggle="tab" href="#home4">Şubeler</a>
												</li>

												<li>
													<a data-toggle="tab" href="#profile4">Bölümler</a>
												</li>

												<li>
													<a data-toggle="tab" href="#dropdown14">Çalışanlar</a>
												</li>
											</ul>

											<div class="tab-content">
												<div id="home4" class="tab-pane in active">
													<table id="simple-table" class="table  table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Şube Adı</th>
                                            <th>İşlem</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href="#">A Şubesi</a>
                                            </td>
                                            <td>
                                                <div class="hidden-sm hidden-xs ">
                                                    <button class="btn btn-xs btn-success">
                                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                    </button>
                                                    <button class="btn btn-xs btn-danger">
                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                    </button>
                                                </div>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="#">B Şubesi</a>
                                            </td>
                                            <td>
                                                <div class="hidden-sm hidden-xs ">
                                                    <button class="btn btn-xs btn-success">
                                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                    </button>
                                                    <button class="btn btn-xs btn-danger">
                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        </tr>
                                    </tbody>
                                </table>
												</div>
												<div id="profile4" class="tab-pane">
													<table id="simple-table1" class="table  table-bordered table-hover  ">
                                <thead>
                                    <tr style="color: #669FC7">
                                        <th>Şube Adı</th>
                                        <th>Bölüm Adı</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>A Şubesi</td>
                                        <td>A Bölümü</td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">
                                                <button class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                                <button id="sk" class="btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
												</div>

												<div id="dropdown14" class="tab-pane">
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
                                    <tr>
                                        <td>A Şubesi</td>
                                        <td>A Bölümü</td>
                                        <td>A Çalışanı</td>

                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">
                                                <button class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                                <button id="sk" class="btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
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
</body>
</html>
