<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAppointments.aspx.cs" Inherits="OnlineReservation.Web.Appointments.UserAppointments" %>


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
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/assets/css/select2.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="/assets/css/ace.min.css" class="ace-main-stylesheet" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
    <link rel="stylesheet" href="/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="/assets/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

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
                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>
                        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                            <ul class="breadcrumb">
                                <li>
                                    <i class="ace-icon fa fa-home home-icon"></i>
                                    <a href="../Default.aspx">Ana Sayfa</a>
                                </li>

                                <li class="active">Randevu</li>
                                <li class="active">Randevularım</li>
                            </ul>
                        </div>
                        <div class="col-xs-12" style="padding-left: 0;">
                            <div>
                                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Firma</th>
                                            <th>Şube</th>
                                            <th>Bölüm</th>
                                            <th>Personel</th>
                                            <th>Tarih</th>
                                            <th>Saat</th>
                                            <th>Not Ekle</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>B Firması</td>
                                            <td>B Şubesi</td>
                                            <td>B Bölümü</td>
                                            <td>Ahmet</td>
                                            <td>Tem 18</td>
                                            <td>18:00</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>C Firması</td>
                                            <td>C Şubesi</td>
                                            <td>C Bölümü</td>
                                            <td>Ayşe</td>
                                            <td>Tem 10</td>
                                            <td>18:45</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>D Firması</td>
                                            <td>D Şubesi</td>
                                            <td>D Bölümü</td>
                                            <td>Elif</td>
                                            <td>Tem 11</td>
                                            <td>19:00</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>E Firması</td>
                                            <td>E Şubesi</td>
                                            <td>E Bölümü</td>
                                            <td>Esma</td>
                                            <td>Tem 12</td>
                                            <td>19:30</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td>
                                                <span class="label label-lg label-grey arrowed">Geçmiş</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>A Firması</td>
                                            <td>A Şubesi  </td>
                                            <td>A Bölümü</td>
                                            <td>Ali .</td>
                                            <td>Temmuz 2023</td>
                                            <td>15:00</td>
                                            <td><span class="label label-lg label-success arrowed-right">Gelecek</span>
                                                <button class="btn btn-warning btn-xs" data-dismiss="modal" data-toggle="modal" data-target="#modal-tableNot" style="height: 25px;">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="col-xs-12 modal fade " id="modal-tableNot" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content no-margin-top">
                                    <div class="modal-header" style="padding-bottom: 0px; padding-top: 5px; border-top-width: 5px;">
                                        <button type="button" class="bootbox-close-button close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h5 class="modal-title">Not Ekle </h5>
                                    </div>
                                    <div class="bootbox-body">
                                        <asp:TextBox ID="TextBox1" TextMode="multiline" Columns="30" Rows="5" runat="server" />
                                    </div>
                                    <div class="modal-footer" style="padding-bottom: 5px; padding-top: 5px;">
                                        <button data-bb-handler="cancel" type="button" class="btn btn-default" data-dismiss="modal">İptal</button>
                                        <button data-bb-handler="confirm" type="button" class="btn btn-primary kaydedildi" data-dismiss="modal">Kaydet</button>
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

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function ($) {
            //initiate dataTables plugin
            var myTable =
                $('#dynamic-table')
                    //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                    .DataTable({
                        bAutoWidth: false,
                        "aoColumns": [
                            { "bSortable": false },
                            null, null, null, null, null,
                            { "bSortable": false }
                        ],
                        "aaSorting": [],
                    });
            $(".kaydedildi").click(function () {
                alert("kaydedildi");
            });
        })
    </script>
</body>
</html>
