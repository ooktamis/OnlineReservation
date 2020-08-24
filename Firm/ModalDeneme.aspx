<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalDeneme.aspx.cs" Inherits="OnlineReservation.Web.Firm.ModalDeneme" %>

<%@ Register Src="~/UserControls/UCHeader.ascx" TagPrefix="uc1" TagName="UCHeader" %>
<%@ Register Src="~/UserControls/UCSideBar.ascx" TagPrefix="uc1" TagName="UCSideBar" %>
<%@ Register Src="~/UserControls/UCFooter.ascx" TagPrefix="uc1" TagName="UCFooter" %>
<%@ Register Src="~/UserControls/UCFooterJS.ascx" TagPrefix="uc1" TagName="UCFooterJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Gallery - Ace Admin</title>

    <meta name="description" content="responsive photo gallery using colorbox" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/assets/css/colorbox.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

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
    <style>
        .strong-div {
            background-color: #e04f67;
            text-align: center;
            width: 40px;
            height: 40px;
            display: inline-block;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            color: #fff;
            font-size: 18px;
            line-height: 40px;
            text-align: center;
            position: absolute;
            left: 0;
            top: 0;
        }

        .select2 {
            min-width: 250px;
        }

        .saatBos3 {
            overflow-x: hidden;
            overflow-x: scroll;
        }

        .saatBos2 {
            overflow-y: hidden;
            overflow-y: scroll;
        }

        div .butonmargin {
            margin-bottom: 5px;
            margin-left: 5px;
            margin-right: 5px;
            margin-top: 5px;
        }

        .baslik {
            text-align: center;
            padding-left: 0;
            border-color: #666;
            background: #404040;
        }

        .sidebar {
            position: -webkit-sticky;
            position: sticky;
            top: 6px;
        }

        .sidebartable {
            width: 360px;
            height: 300px;
        }
    </style>
</head>
<body class="no-skin">
    <form id="form1" runat="server">
        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try { ace.settings.loadState('main-container') } catch (e) { }
            </script>
            <div class="main-content">
                <div class="main-content-inner">

                    <div class="page-content">
                        <div class="row">
                            <div class="col-xs-8">

                                <div id="timeline-1">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-10 col-sm-offset-1">
                                            <div class="timeline-container">
                                                <div class="timeline-label">
                                                    <span class="label label-primary arrowed-in-right label-lg">
                                                        <b>Yeni Randevu</b>
                                                    </span>
                                                </div>

                                                <div class="timeline-items">
                                                    <div class="timeline-item clearfix">
                                                        <div class="timeline-info">
                                                            <strong class="strong-div">1</strong>
                                                        </div>

                                                        <div class="widget-box transparent">
                                                            <div class="widget-header widget-header-small">
                                                                <h5 class="widget-title smaller">
                                                                    <span class="grey">Hizmet Seçimi</span>
                                                                </h5>

                                                            </div>

                                                            <div class="widget-body">
                                                                <div class="widget-main">
                                                                    Hizmet Seçimi Tamamlandı
                                                                </div>
                                                                <button type="button" class="btn btn-white btn-primary btn-sm">Değiştir</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="timeline-item clearfix">
                                                        <div class="timeline-info">
                                                            <strong class="strong-div">2</strong>
                                                        </div>

                                                        <div class="widget-box transparent">
                                                            <div class="widget-body">
                                                                <div class="widget-main">
                                                                    Personel Seçiniz
                                                                 <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                                                                     <ul class="breadcrumb">
                                                                         <li>
                                                                             <a href="../Default.aspx">Ana Sayfa</a>
                                                                         </li>
                                                                         <li class="active">Randevu</li>
                                                                         <li class="active">Randevu Al</li>
                                                                     </ul>
                                                                 </div>
                                                                    <div>
                                                                        <select id="state" name="state" class="select2">
                                                                            <option value="">Personel Seçiniz...</option>
                                                                            <option value="AL">ALi</option>
                                                                            <option value="AK">Ayşe</option>
                                                                            <option value="AZ">Meltem</option>
                                                                            <option value="AR">Fatih</option>
                                                                            <option value="CA">İlyas</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="timeline-item clearfix">
                                                        <div class="timeline-info">
                                                            <strong class="strong-div">3</strong>
                                                        </div>

                                                        <div class="widget-box transparent">
                                                            <div class="widget-header widget-header-small">
                                                                <h5 class="widget-title smaller">Tarih Seçiniz</h5>
                                                            </div>

                                                            <div class="widget-body">
                                                                <div class="widget-main">
                                                                    <div class="widget-toolbox clearfix saatBos3">
                                                                        <table class="table table-responsive ">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Button ID="button" runat="server" class="btn btn-default btn-lg btn-success" Text="10/08/2018" ToolTip="Randevu Al"></asp:Button></td>

                                                                                <td>
                                                                                    <asp:Button ID="button0" runat="server" class="btn btn-default btn-lg btn-success" Text="11/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button1" runat="server" class="btn btn-default btn-lg btn-success" Text="12/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button2" runat="server" class="btn btn-default btn-lg btn-success" Text="13/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button3" runat="server" class="btn btn-default btn-lg btn-success" Text="14/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button4" runat="server" class="btn btn-default btn-lg btn-success" Text="15/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button5" runat="server" class="btn btn-default btn-lg btn-success" Text="16/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button6" runat="server" class="btn btn-default btn-lg btn-success" Text="17/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button7" runat="server" class="btn btn-default btn-lg btn-success" Text="18/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button10" runat="server" class="btn btn-default btn-lg btn-success" Text="19/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button11" runat="server" class="btn btn-default btn-lg btn-success" Text="20/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button12" runat="server" class="btn btn-default btn-lg btn-success" Text="21/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button9" runat="server" class="btn btn-default btn-lg btn-success " Text="20/08/2018" ToolTip="Randevu Al"></asp:Button></td>
                                                                                <td>
                                                                                    <asp:Button ID="button8" runat="server" class="btn btn-default btn-lg btn-success " Text="21/08/2018" ToolTip="Randevu Al"></asp:Button></td>

                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="timeline-item clearfix">
                                                        <div class="timeline-info">
                                                            <strong class="strong-div">4</strong>
                                                        </div>

                                                        <div class="widget-box transparent">
                                                            <div class="widget-header widget-header-small">
                                                                <h5 class="widget-title smaller">Saat Seçiniz</h5>
                                                            </div>
                                                            <div class="widget-body">
                                                                <div class="widget-main saatBos2" style="text-align:center">
                                                                    <div class="row col-xs-12 " style="margin-top: 5px;">
                                                                        <asp:Button ID="button13" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="10:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button14" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="11:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button15" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="12:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button16" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="13:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button17" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="14:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button18" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="15:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button19" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="16:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button20" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="17:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button21" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="18:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button22" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="19:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button23" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="20:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button ID="button24" runat="server" class="btn btn-default btn-lg btn-success butonmargin" Text="21:50" ToolTip="Randevu Al"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="08:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="15:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="16:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="17:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="18:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="19:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="20:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="21:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="18:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="19:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="20:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="21:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                                                        <asp:Button runat="server" class="btn btn-default btn-lg btn-success butonmargin" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /.timeline-items -->
                                                </div>
                                                <!-- /.timeline-container -->

                                                <!-- /.timeline-container -->

                                                <!-- /.timeline-container -->
                                            </div>
                                        </div>
                                    </div>


                                    <!-- PAGE CONTENT ENDS -->
                                </div>
                                <!-- /.col -->
                            </div>

                            <div class="col-xs-4 sidebar sidebartable">
                                <div class="box_style_1">
                                    <h3 class="inner">- Özet -</h3>
                                    <table class="table table_summary">
                                        <tbody>
                                            <tr>
                                                <td><strong>Salon</strong></td>
                                                <td class="text-right">Tuğba Erdal Güzellik Merkezi</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Hizmetler</strong></td>
                                                <td class="text-right">Kalıcı Dudak</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Personeller</strong></td>
                                                <td class="text-right" id="personel-ozet">-</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Tarih</strong></td>
                                                <td class="text-right" id="tarih-ozet">2018-07-12</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Saat</strong></td>
                                                <td class="text-right" id="saat-ozet">-</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- /.row -->
                        </div>
                        <!-- /.page-content -->
                    </div>
                </div>
                <!-- /.main-content -->

            </div>
            <!-- /.main-container -->

            <!-- basic scripts -->
        </div>
        <!--[if !IE]> -->
    </form>
    <script src="/assets/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="/assets/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="/assets/js/jquery.colorbox.min.js"></script>

    <!-- ace scripts -->
    <script src="/assets/js/ace-elements.min.js"></script>
    <script src="/assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function ($) {
            var $overflow = '';
            var colorbox_params = {
                rel: 'colorbox',
                reposition: true,
                scalePhotos: true,
                scrolling: false,
                previous: '<i class="ace-icon fa fa-arrow-left"></i>',
                next: '<i class="ace-icon fa fa-arrow-right"></i>',
                close: '&times;',
                current: '{current} of {total}',
                maxWidth: '100%',
                maxHeight: '100%',
                onOpen: function () {
                    $overflow = document.body.style.overflow;
                    document.body.style.overflow = 'hidden';
                },
                onClosed: function () {
                    document.body.style.overflow = $overflow;
                },
                onComplete: function () {
                    $.colorbox.resize();
                }
            };

            $('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
            $("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon


            $(document).one('ajaxloadstart.page', function (e) {
                $('#colorbox, #cboxOverlay').remove();
            });
        })
    </script>
</body>
</html>
