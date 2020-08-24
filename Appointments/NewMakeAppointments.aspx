<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMakeAppointments.aspx.cs" Inherits="OnlineReservation.Web.Appointments.NewMakeAppointments" %>

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
    <link rel="stylesheet" href="/assets/css/bootstrap-datepicker3.min.css" />

    <link href="/Style/css/Custom.css" rel="stylesheet" />
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
            height: 275px;
        }

        .stronghizalama {
            left: 9px;
        }
    </style>

</head>
<body class="no-skin">
    <form id="form1" runat="server">
        <uc1:UCHeader runat="server" ID="UCHeader" />
        <asp:ScriptManager ID="Scrpt" runat="server"></asp:ScriptManager>
        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try { ace.settings.loadState('main-container') } catch (e) { }
            </script>
            <div class="main-content">
                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>
                        <div class="main-content-inner">

                            <div class="page-content">
                                <div class="row">
                                    <div class="col-xs-8">

                                        <div id="timeline-1">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-10 col-sm-offset-1">
                                                    <div class="timeline-container ">
                                                        <div class="timeline-label">
                                                            <span class="label label-primary arrowed-in-right label-lg">
                                                                <b>Yeni Randevu</b>
                                                            </span>
                                                        </div>

                                                        <div class="timeline-items">





                                                            <asp:UpdatePanel ID="upDepartmentAndMember" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <div class="timeline-item clearfix">
                                                                        <div class="timeline-info stronghizalama">
                                                                            <strong class="strong-div">1</strong>
                                                                        </div>
                                                                        <div class="widget-box transparent" data-step="1">
                                                                            <div class="widget-header widget-header-small">
                                                                                <h5 class="widget-title smaller">
                                                                                    <span class="grey">Hizmet Seçimi</span>
                                                                                </h5>
                                                                            </div>
                                                                            <div class="widget-body">
                                                                                <div class="widget-main">
                                                                                    Hizmet Seçiniz
                                                                            <div>
                                                                                <asp:DropDownList ID="DrpDepartment" runat="server" class="select2" AutoPostBack="true" OnSelectedIndexChanged="DrpDepartment_SelectedIndexChanged"></asp:DropDownList>
                                                                            </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="timeline-item clearfix">
                                                                        <div class="timeline-info stronghizalama">
                                                                            <strong class="strong-div">2</strong>
                                                                        </div>
                                                                        <div class="widget-box transparent" data-step="2">
                                                                            <div class="widget-body">
                                                                                <div class="widget-main">
                                                                                    Personel Seçiniz
                                                                            <div>
                                                                                <asp:DropDownList ID="drpEmployee" runat="server" class="select2" AutoPostBack="true" OnSelectedIndexChanged="drpEmployee_SelectedIndexChanged"></asp:DropDownList>
                                                                            </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>


                                                            <asp:UpdatePanel ID="upDate" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <div class="timeline-item clearfix" data-step="3" id="dvDate" runat="server" visible="false">
                                                                        <div class="timeline-info stronghizalama">
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
                                                                                                <asp:Repeater ID="rptDate" runat="server" OnItemCommand="rptDate_ItemCommand">
                                                                                                    <ItemTemplate>
                                                                                                        <td>
                                                                                                            <asp:Button ID="rptTarih" runat="server" CommandName="GetHours" CommandArgument='<%# Eval("PERSONDATE") %>' class="btn btn-default btn-lg btn-success tarihbuton data-step-button" Text='<%#Convert.ToDateTime( Eval("PERSONDATE")).ToShortDateString() %>' ToolTip="Randevu Al"></asp:Button>
                                                                                                        </td>
                                                                                                    </ItemTemplate>
                                                                                                </asp:Repeater>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>


                                                            <div class="timeline-item clearfix randevusaat" data-step="4">
                                                                <div class="timeline-info stronghizalama">
                                                                    <strong class="strong-div">4</strong>
                                                                </div>
                                                                <div class="widget-box transparent">
                                                                    <div class="widget-header widget-header-small">
                                                                        <h5 class="widget-title smaller">Saat Seçiniz</h5>
                                                                    </div>
                                                                    <div class="widget-body">
                                                                        <div class="widget-main saatBos2" style="text-align: center">
                                                                            <div class="row col-xs-12 " style="margin-top: 5px;">
                                                                                <asp:UpdatePanel ID="upHours" runat="server" UpdateMode="Conditional">
                                                                                    <ContentTemplate>
                                                                                        <asp:Repeater ID="rptHours" runat="server" OnItemCommand="rptHours_ItemCommand">
                                                                                            <ItemTemplate>
                                                                                                <asp:Button ID="btnHour" runat="server" CommandName="Hour" CommandArgument='<%# Convert.ToDateTime( Eval("DATE")) %>' CssClass="btn btn-default btn-lg btn-success butonmargin randevubuton data-step-button" Text=' <%# Convert.ToDateTime( Eval("DATE")).ToShortTimeString() %>' Enabled='<%# ! Convert.ToBoolean(Eval("HASRESERVATION")) %>' ToolTip="Randevu Al"></asp:Button>
                                                                                            </ItemTemplate>
                                                                                        </asp:Repeater>
                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>
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

                                    <div class="col-xs-4 sidebar sidebartable  ">
                                        <div class="box_style_1">
                                            <h3 class="inner" style="text-align: center">- Özet -</h3>

                                            <asp:UpdatePanel ID="upSummary" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table class="table table_summary">
                                                        <tbody>
                                                            <tr>
                                                                <td><strong>Salon</strong></td>
                                                                <td class="text-right">
                                                                    <asp:Label runat="server" ID="lblNAME"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong>Hizmetler</strong></td>
                                                                <td class="text-right" id="Hizmet-ozet">
                                                                    <asp:Label runat="server" ID="lblDEPARTMENT"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong>Personeller</strong></td>
                                                                <td class="text-right" id="personel-ozet">
                                                                    <asp:Label runat="server" ID="lblMEMBER"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong>Tarih</strong></td>
                                                                <td class="text-right" runat="server" id="DateInfo1">
                                                                    <asp:Label ID="DateInfo" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong>Saat</strong></td>
                                                                <td class="text-right" id="TimeInfo">-</td>
                                                            </tr>
                                                            <tr class="olustur">
                                                                <td>
                                                                    <asp:Button ID="btnNewRandevu" CssClass="btn btn-white btn-primary btn-sm butononay" Visible="false" runat="server" Text="Randevuyu Oluştur" OnClick="btnNewRandevu_Click"></asp:Button></td>
                                                                <td>
                                                                    <asp:LinkButton runat="server" ID="btnIptal" CssClass="btn btn-white btn-primary btn-sm butoniptal pull-right" Text="İptal"></asp:LinkButton></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>



                                        </div>
                                    </div>

                                    <!-- /.row -->
                                </div>
                                <!-- /.page-content -->
                            </div>
                        </div>
                        <!-- /.main-content -->
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <!-- /.main-container -->
            <uc1:UCFooter runat="server" ID="UCFooter" />
            <!-- basic scripts -->
        </div>
        <!--[if !IE]> -->
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
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

            $("#drpEmployee").change(function () {
                var text = $("#drpEmployee :selected").text();

                if (this.value == 0) {
                    text = "";
                }
                $("#lblMEMBER").html(text);
            });

            $("#DrpDepartment").change(function () {
                var text = $("#DrpDepartment :selected").text();

                if (this.value == 0) {
                    text = "";
                }
                $("#lblDEPARTMENT").html(text);
            });


            $("#rptTarih").click(function () {
                $("#DateInfo").html($(this)[0].value);
            });


            //$(".tarihbuton").click(function () {
            //    debugger;
            //    $("#DateInfo").html($(this)[0].value);
            //});
            //$(".randevubuton").click(function () {
            //  debugger;
            // $("#saat-ozet").html($(this)[0].value);
            //});

            //$(".randevubuton").click(function () {

            //    $(".randevucep").show();

            //});
            //$(".tarihbuton data-step-button").click(function () {

            //    $(".randevusaat").show();

            //});
            $(".randevubuton").click(function () {

                $(".olustur").show();
            });
            //});


            //***************
            //$(".data-step-button").click(function () {

            //    $this = $(this);
            //    var currentStep = parseInt($(this).closest(".timeline-item").attr("data-step"));

            //    switch (currentStep) {
            //        case 3:
            //            $(".tarihbuton[disabled='disabled']").removeAttr("disabled");
            //            $("#DateInfo").html($this.val());
            //            $this.attr("disabled", "disabled");
            //            break;
            //        case 4:
            //            $(".randevubuton[disabled='disabled']").removeAttr("disabled");
            //            $("#TimeInfo").html($this.val());
            //            $this.attr("disabled", "disabled"); break;
            //    }

            //    $NexStep = $("[data-step=" + (currentStep + 1) + "]");
            //    $NexStep.show();


            //    $([document.documentElement, document.body]).animate({
            //        scrollTop: $NexStep.offset().top
            //    }, 1000);
            //});
            //**************
            //$(".tarihbuton").click(function () {
            //    $(".tarihbuton").attr("disabled", true);
            //});

            //$(".butononay").click(function () {
            //    alert("Randevu Oluşturuldu");
            //});
            $(".butoniptal").click(function () {
                alert("Randevu iptal Edildi.");
                window.location.href = '/Firms/FirmsPage.aspx';
            });
            $("#Degistir").click(function () {
                window.location.href = '/Firms/FirmsPage.aspx';
            });
        })
    </script>
</body>
</html>
