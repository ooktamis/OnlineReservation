<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deneme.aspx.cs" Inherits="OnlineReservation.Web.Firms.Deneme" %>



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
    <style>
        .styls {
            padding-left: 15px;
            padding-bottom: 15px;
            padding-right: 15px;
            padding-top: 15px;
        }
    </style>
    <script>
        function OpenModal() {

            $("#mdlrandevubilgileri").modal('show');

        }
    </script>

</head>
<body class="no-skin">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="Scrpt" runat="server"></asp:ScriptManager>
        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try { ace.settings.loadState('main-container') } catch (e) { }
            </script>
            <div class="main-content">
                <asp:UpdatePanel runat="server" ID="upmodal">
                    <ContentTemplate>


                        <div class="main-content-inner">
                            <div class="page-content">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <div class="widget-box">
                                        <div class="widget-body">
                                            <div class="widget-main">

                                                <asp:Button runat="server" ID="Modalbutonn" CssClass="btn btn-sm btn-success pull-right " OnClick="Modalbutonn_Click"
                                                    Style="height: 38px; margin-bottom: 5px;" Text="Yeni Firma Ekle" />

                                                <%--<asp:LinkButton runat="server" ID="modalbuton" OnClick="modalbuton_Click"><i class="ace-icon fa fa-cog"></i></asp:LinkButton>--%>

                                                <div class="col-sm-6">
                                                    <div class="row">
                                                        <div id="mdlrandevubilgileri" class="modal" tabindex="-1" role="dialog">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">

                                                                    <div class="modal-header no-padding">
                                                                        <div class="table-header" style="text-align: center;">
                                                                            Randevu Bilgilerini Girin
                                                                        </div>
                                                                    </div>
                                                                    <div class="styls">
                                                                        <asp:Label runat="server" for="iddatepicker">Başlangıç Tarihi</asp:Label>
                                                                        <%--for: labela tıklandığında bağlı olduğu textboxun tetiklenmesini sağlar--%>
                                                                        <div class="row ">
                                                                            <div class="col-xs-6">
                                                                                <div class="input-group">
                                                                                    <asp:TextBox CssClass="form-control date-picker" ID="iddatepicker" runat="server" data-date-format="dd-mm-yyyy"></asp:TextBox>
                                                                                    <span class="input-group-addon">
                                                                                        <i class="fa fa-calendar bigger-110"></i>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <asp:Label runat="server" for="iddatepickerend">Bitiş Tarihi</asp:Label>
                                                                        <div class="row">
                                                                            <div class="col-xs-6">
                                                                                <div class="input-group">
                                                                                    <asp:TextBox CssClass="form-control date-picker" ID="iddatepickerend" runat="server" data-date-format="dd-mm-yyyy"></asp:TextBox>
                                                                                    <span class="input-group-addon">
                                                                                        <i class="fa fa-calendar bigger-110"></i>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <asp:Label runat="server" for="timepickerstart">Başlangıç Saat Aralığı</asp:Label>

                                                                        <div class="input-group bootstrap-timepicker col-xs-6" style="width:272px;">

                                                                            <asp:TextBox ID="timepickerstart" runat="server" CssClass="form-control  timepickers"></asp:TextBox>

                                                                            <span class="input-group-addon">
                                                                                <i class="fa fa-clock-o bigger-110"></i>
                                                                            </span>

                                                                        </div>

                                                                        <asp:Label runat="server" for="timepickerend">Bitiş Saat Aralığı</asp:Label>

                                                                        <div class="input-group bootstrap-timepicker col-xs-6" style="width:272px;">

                                                                            <asp:TextBox ID="timepickerend" runat="server" CssClass="form-control timepickers"></asp:TextBox>

                                                                            <span class="input-group-addon">
                                                                                <i class="fa fa-clock-o bigger-110"></i>
                                                                            </span>
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
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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

    <!--[if !IE]> -->
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

    <!--[if lte IE 8]>
		  <script src="/assets/js/excanvas.min.js"></script>
		<![endif]-->
    <script src="/assets/js/jquery-ui.custom.min.js"></script>
    <script src="/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="/assets/js/chosen.jquery.min.js"></script>
    <script src="/assets/js/spinbox.min.js"></script>
    <script src="/assets/js/bootstrap-datepicker.min.js"></script>
    <script src="/assets/js/bootstrap-timepicker.min.js"></script>
    <script src="/assets/js/moment.min.js"></script>
    <script src="/assets/js/daterangepicker.min.js"></script>
    <script src="/assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/assets/js/bootstrap-colorpicker.min.js"></script>
    <script src="/assets/js/jquery.knob.min.js"></script>
    <script src="/assets/js/autosize.min.js"></script>
    <script src="/assets/js/jquery.inputlimiter.min.js"></script>
    <script src="/assets/js/jquery.maskedinput.min.js"></script>
    <script src="/assets/js/bootstrap-tag.min.js"></script>

    <!-- ace scripts -->
    <script src="/assets/js/ace-elements.min.js"></script>
    <script src="/assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
                Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
                function endRequestHandler() {

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
                }
                endRequestHandler();
    </script>
</body>
</html>
