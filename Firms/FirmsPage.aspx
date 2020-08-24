<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirmsPage.aspx.cs" Inherits="OnlineReservation.Web.Firms.FirmsPage" %>


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
    <style>
        .img-li {
            max-width: 340px;
            max-height: 256px;
            min-height: 256px;
        }

        .image-li {
            text-align: center;
        }

        .widget-box {
            margin: 0px !important;
        }

        .pricing-box {
            background-color: #fff;
            padding: 5px !important;
        }

            .pricing-box:hover {
                transform: scale(1.04);
                z-index: 9999;
                -webkit-box-shadow: 0px 0px 5px 2px rgba(0,0,0,0.75);
                -moz-box-shadow: 0px 0px 5px 2px rgba(0,0,0,0.75);
                box-shadow: 0px 0px 5px 2px rgba(0,0,0,0.75);
            }

        table .hakkinda-li p {
            padding-right: 15px;
            padding-left: 15px;
            max-width: 100%;
            max-height: 60px;
            min-height: 60px;
            overflow-y: auto;
            padding: 20px;
        }

        table .adress-li p {
            max-width: 100%;
            max-height: 70px;
            min-height: 70px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 15px;
            overflow-y: auto;
        }

        table.telefon-li {
            max-height: 20px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 2px;
            padding-bottom: 2px;
        }

        .search {
            width: 100%;
            position: relative
        }

        .searchTerm {
            float: left;
            width: 100%;
            border: 3px solid #00B4CC;
            padding: 5px;
            height: 20px;
            border-radius: 5px;
            outline: none;
            color: #9DBFAF;
        }

            .searchTerm:focus {
                color: #00B4CC;
            }

        .searchButton {
            position: absolute;
            right: -50px;
            width: 40px;
            height: 36px;
            border: 1px solid #00B4CC;
            background: #00B4CC;
            text-align: center;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            font-size: 20px;
        }

        .wrapx {
            width: 30%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
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
                                <a href="../Default.aspx">Ana Sayfa</a>
                            </li>
                            <li>Randevu Al
                            </li>
                        </ul>
                    </div>
                    <div class="page-content">

                        <div class="input-group col-xs-6 col-xs-offset-3">
                            <input type="text" class="form-control" placeholder="Sektör Seçiniz.." />
                            <div class="input-group-btn">
                                <button tabindex="-1" class="btn btn-sm btn-default" type="button">Ara</button>
                                <button tabindex="-1" data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle" type="button">
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">Kuaför</a></li>
                                    <li><a href="#">Sağlık</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Galeri</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="row " style="margin-top: 15px;">
                            <div class="col-xs-12">
                                <div class="row" style="word-wrap: break-word;">
                                    <asp:Repeater runat="server" ID="rpFirmList">
                                        <ItemTemplate>
                                            <div class="col-xs-6 col-sm-4 pricing-box">
                                                <div class="widget-box widget-color-dark">
                                                    <div class="widget-header">
                                                        <span class="widget-title bigger lighter" style="font-size: 15px;">
                                                            <td><%# Eval("NAME") %> </td>
                                                        </span>
                                                    </div>
                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <ul class="list-unstyled spaced2">
                                                                <li class="image-li">
                                                                    <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k1.jpg" />
                                                                </li>
                                                            </ul>
                                                            <table>
                                                                <tr class="adress-li">
                                                                    <td><b>Adres:</b></td>
                                                                    <td>
                                                                        <p><%# Eval("ADRESS") %></p>
                                                                    </td>
                                                                </tr>
                                                                <tr class="hakkinda-li">
                                                                    <td><b>Hakkında:</b></td>
                                                                    <td>
                                                                        <p><%# Eval("DESCRIPTION") %></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="telefon-li"><b>Telefon :</b></td>
                                                                    <td>
                                                                        <p><%# Eval("PHONE") %></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><b>Çalışma Günleri:</b></td>
                                                                    <td>
                                                                        <p>Pazar Hariç Hergün</p>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div>
                                                                <a href="/Appointments/NewMakeAppointments.aspx?ID=<%# Eval("ID") %>" class="btn btn-block btn-inverse">
                                                                    <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                                    <span>Randevu Al</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <%--
                                    <asp:UpdatePanel runat="server" ID="upFirmList" UpdateMode="Conditional">
                                        <ContentTemplate>

                                            <table id="dynamic-table" class="table  table-bordered table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                        <th class="col-xs-3">Firma ADI</th>
                                                        <th class="col-xs-2">Şube ADI</th>
                                                        <th class="col-xs-2">Bölüm Adı</th>
                                                        <th class="col-xs-3">Personel</th>
                                                        <th class="col-xs-2">Detaylar</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:Repeater runat="server" ID="rpWorkingList" OnItemCommand="rpWorkingList_ItemCommand">
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td><%# Eval("FIRMNAME") %></td>
                                                                <td><%# Eval("FIRMBRANCHNAME") %></td>
                                                                <td><%# Eval("FIRMDEPARTMENTNAME") %></td>
                                                                <td><%# Eval("FULLNAME") %></td>
                                                                <td>
                                                                    <div>
                                                                        <div class=" btn-group">
                                                                            <asp:LinkButton runat="server" CssClass="btn btn-xs btn-info" ID="btnupdate"
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

                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <h4 class="widget-title bigger lighter">Esmed Güzellik Merkezi</h4>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k2.jpg" />
                                                        </li>
                                                    </ul>
                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>Esmed Güzellik Merkezi Ataşehir Adres: İnönü Mah. Kayışdağı Cad. Beykonağı Plaza No:130 Kat 1 Ataşehir İstanbul</p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <b class="widget-title bigger lighter">Bilgem Güzellik</b>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k3.jpg" />
                                                        </li>
                                                    </ul>

                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>
                                                                    Bilgem Güzellik Adres: 1762 Sokak No:5 D:4 Kat:2 Kitapçı Apt. Bahriye Üçok Bulvarı Karşıyaka İzmir
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz renklendirme-prfesyonel </p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <h4 class="widget-title bigger lighter">Emrah Boz Saç & Sanat</h4>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k1.jpg" />
                                                        </li>
                                                    </ul>

                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>Emrah Boz Saç & Sanat Adres: Feritselimpasa Cad Güzide Hanim Sok No:13 Bahçelievler İstanbul</p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz renklendirme-prfesyonel make-up uzmanı</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <h4 class="widget-title bigger lighter">Esmed Güzellik Merkezi</h4>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k6.jpg" />
                                                        </li>
                                                    </ul>
                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>Esmed Güzellik Merkezi Ataşehir Adres: İnönü Mah. Kayışdağı Cad. Beykonağı Plaza No:130 Kat 1 Ataşehir İstanbul</p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <b class="widget-title bigger lighter">Bilgem Güzellik</b>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k3.jpg" />
                                                        </li>
                                                    </ul>

                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>
                                                                    Bilgem Güzellik Adres: 1762 Sokak No:5 D:4 Kat:2 Kitapçı Apt. Bahriye Üçok Bulvarı Karşıyaka İzmir
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz renklendirme-prfesyonel </p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>


                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <h4 class="widget-title bigger lighter">Emrah Boz Saç & Sanat</h4>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k1.jpg" />
                                                        </li>
                                                    </ul>

                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>Emrah Boz Saç & Sanat Adres: Feritselimpasa Cad Güzide Hanim Sok No:13 Bahçelievler İstanbul</p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz renklendirme-prfesyonel make-up uzmanı</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <h4 class="widget-title bigger lighter">Esmed Güzellik Merkezi</h4>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k2.jpg" />
                                                        </li>
                                                    </ul>
                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>Esmed Güzellik Merkezi Ataşehir Adres: İnönü Mah. Kayışdağı Cad. Beykonağı Plaza No:130 Kat 1 Ataşehir İstanbul</p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-xs-6 col-sm-4 pricing-box">
                                        <div class="widget-box widget-color-dark">
                                            <div class="widget-header">
                                                <b class="widget-title bigger lighter">Bilgem Güzellik</b>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <ul class="list-unstyled spaced2">
                                                        <li class="image-li">
                                                            <img class="img-li  image-li-width col-xs-12" src="/Firms/img/k3.jpg" />
                                                        </li>
                                                    </ul>

                                                    <table>
                                                        <tr class="adress-li">
                                                            <td><b>Adres:</b></td>
                                                            <td>
                                                                <p>
                                                                    Bilgem Güzellik Adres: 1762 Sokak No:5 D:4 Kat:2 Kitapçı Apt. Bahriye Üçok Bulvarı Karşıyaka İzmir
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr class="hakkinda-li">
                                                            <td><b>Hakkında:</b></td>
                                                            <td>
                                                                <p>Ombre-kesim-saç kaynak-topuz renklendirme-prfesyonel </p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="telefon-li"><b>Telefon :</b></td>
                                                            <td>
                                                                <p>05** - *** - ** - **</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Çalışma Günleri:</b></td>
                                                            <td>
                                                                <p>Pazar Hariç Hergün</p>
                                                            </td>
                                                        </tr>
                                                    </table>


                                                    <div>
                                                        <a href="/Appointments/NewMakeAppointments.aspx" class="btn btn-block btn-inverse">
                                                            <i class="menu-icon glyphicon glyphicon-edit bigger-110  "></i>
                                                            <span>Randevu Al</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.page-content -->
                </div>
            </div>
            <uc1:UCFooter runat="server" ID="UCFooter" />
        </div>
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    </form>
</body>
</html>
