<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeAppointments.aspx.cs" Inherits="OnlineReservation.Web.Appointments.MakeAppointments" %>

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
                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false"><ContentTemplate>
                <div class="main-content-inner" id="Pagepanel" runat="server">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="../Default.aspx">Ana Sayfa</a>
                            </li>
                           
                            <li class="active">Randevu</li>
                            <li class="active">Randevu Al</li>
                        </ul>
                    </div>
                    <div class="widget-box" style="margin-top:0;">
                        <div class="widget-header widget-header-blue widget-header-flat">
                            <h4 class="widget-title lighter">Adımları Takip Et.. </h4>
                        </div>
                        <div class="widget-body">
                            <div class="widget-main">
                                <div id="fuelux-wizard-container">
                                    <div>
                                        <ul class="steps">
                                            <li data-step="1" class="active">
                                                <span class="step">1</span>
                                                <span class="title">Sektör Seçiniz</span>
                                            </li>
                                            <li data-step="2" class="active">
                                                <span class="step">2</span>
                                                <span class="title">İl-İlçe</span>
                                            </li>
                                            <li data-step="3" class="active">
                                                <span class="step">3</span>
                                                <span class="title">Kurum-Şube</span>
                                            </li>

                                            <li data-step="4">
                                                <span class="step">4</span>
                                                <span class="title">Bölüm-Personel</span>
                                            </li>

                                            <li data-step="5">
                                                <span class="step">5</span>
                                                <span class="title">Tarih</span>
                                            </li>

                                            <li data-step="6">
                                                <span class="step">6</span>
                                                <span class="title">Saat</span>
                                            </li>
                                            <li data-step="7">
                                                <span class="step">7</span>
                                                <span class="title">Onay</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <hr />
                                    <div class="step-content pos-rel">
                                        <div class="step-pane active " data-step="1">
                                            <h3 class="lighter block green">Aradığınız Hizmet</h3>
                                            <div class="col-s-9">
                                               <div>
									<ul class="ace-thumbnails clearfix">
										<li>
											<a href="/assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img width="200" height="200" alt="200x200" src="/assets/images/gallery/thumb-2.jpg" />
												<div class="text">
													<div class="inner">
                                                        Adres:
                                                        telefon:
                                                        il>ilçe:

													</div>
												</div>
											</a>
										</li>

										<li>
											<a href="/assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img width="200" height="200" alt="200x200" src="/assets/images/gallery/thumb-2.jpg" />
												<div class="text">
													<div class="inner">
                                                        Adres:
                                                        telefon:
                                                        il>ilçe:

													</div>
												</div>
											</a>
										</li>

										<li>
											<a href="/assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img width="200" height="200" alt="200x200" src="/assets/images/gallery/thumb-2.jpg" />
												<div class="text">
													<div class="inner">
                                                        Adres:
                                                        telefon:
                                                        il>ilçe:

													</div>
												</div>
											</a>
										</li>

										<li>
											<a href="/assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img width="200" height="200" alt="200x200" src="/assets/images/gallery/thumb-2.jpg" />
												<div class="text">
													<div class="inner">
                                                        Adres:
                                                        telefon:
                                                        il>ilçe:

													</div>
												</div>
											</a>
										</li>

                                        
									</ul>
								</div>
                                            </div>
                                        </div>
                                        <div class="step-pane active " data-step="2">
                                            <h3 class="lighter block green">Aradığınız Hizmet</h3>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="col-xs-12 col-sm-9">
                                                            <select id="state" name="state" class="select2" data-placeholder="İl Seçiniz...">
                                                                <option value="">&nbsp;</option>
                                                                <option value="AL">Adana</option>
                                                                <option value="AK">İzmir</option>
                                                                <option value="AZ">Ankara</option>
                                                                <option value="AR">İstanbul</option>
                                                                <option value="CA">Hakkari</option>
                                                            </select>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="step-pane active " data-step="3">
                                            <h3 class="lighter block green">Firma Seçiniz</h3>
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <td>
                                                            <div class="col-xs-12 col-sm-9">
                                                                <select id="state" name="state" class="select2" data-placeholder="Firma Seçiniz...">
                                                                    <option value="">&nbsp;</option>
                                                                    <option value="AL">Alabama</option>
                                                                    <option value="AK">Alaska</option>
                                                                    <option value="AZ">Arizona</option>
                                                                    <option value="AR">Arkansas</option>
                                                                    <option value="CA">California</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="col-xs-12 col-sm-9">
                                                                <select id="state" name="state" class="select2" data-placeholder="Şube Seçiniz...">
                                                                    <option value="">&nbsp;</option>
                                                                    <option value="AL">Alabama</option>
                                                                    <option value="AK">Alaska</option>
                                                                    <option value="AZ">Arizona</option>
                                                                    <option value="AR">Arkansas</option>
                                                                    <option value="CA">California</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="step-pane" data-step="4">
                                            <h3 class="lighter block green">Bölümü & Personel Seçiniz</h3>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="col-xs-12 col-sm-9">
                                                            <select id="state" name="state" class="select2" data-placeholder="Bölüm Seçiniz...">
                                                                <option value="">&nbsp;</option>
                                                                <option value="AL">Saç</option>
                                                                <option value="AK">Sakal</option>
                                                                <option value="AZ">Masaj</option>
                                                                <option value="AR">SPA</option>
                                                                <option value="CA">Cilt</option>
                                                            </select>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="col-xs-12 col-sm-9">
                                                            <select id="state" name="state" class="select2" data-placeholder="Personel Seçiniz...">
                                                                <option value="">&nbsp;</option>
                                                                <option value="AL">ALi</option>
                                                                <option value="AK">Ayşe</option>
                                                                <option value="AZ">Meltem</option>
                                                                <option value="AR">Fatih</option>
                                                                <option value="CA">İlyas</option>
                                                            </select>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>

                                        <div class="step-pane active " data-step="5">
                                            <h3 class="lighter block green">Tarih Seçiniz</h3>
                                            <div class="widget-main">
														<label for="id-date-picker-1">Date Picker</label>
														<div class="row">
															<div class="col-xs-8 col-sm-11">
																<div class="input-group">
																	<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" />
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>
															</div>
														</div>
                                                </div>
                                            </div>

                                        <div class="step-pane" data-step="6">
                                            <h4 class="pink">
                                                <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                                                <a role="button" class="green" >Saat Seçiniz </a>
                                            </h4>
                                         <div class="row col-xs-12">
                                            <asp:Button ID="button" runat="server" class="btn btn-default btn-lg btn-success saatBos2"  Text="10:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button0" runat="server" class="btn btn-default btn-lg btn-success saatBos2"  Text="11:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button1" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="12:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button2" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="13:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button3" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="14:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button4" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="15:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button5" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="16:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button6" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="17:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button7" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="18:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button8" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="19:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button9" runat="server" class="btn btn-default btn-lg btn-success saatBos2" Text="20:50" ToolTip="Randevu Al"></asp:Button>
                                            <asp:Button ID="button10" runat="server" class="btn btn-default btn-lg btn-success saatBos2"  Text="21:50" ToolTip="Randevu Al"></asp:Button>
                                             </div>
                                            <div class="row col-xs-12 " style="margin-top:5px;">
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="08:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="15:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="16:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="17:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="18:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="19:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="20:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="21:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                            <asp:Button  runat="server" class="btn btn-default btn-lg btn-success saatBos2" ToolTip="Randevu Al" Text="22:50"></asp:Button>
                                        </div>
                                        </div>

                                        <div class="step-pane" data-step="7">
                                            <table  class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Sektör</th>
                                                        <th>İl-İlçe</th>
                                                        <th>Firma-Şube</th>
                                                        <th>Bölüm-Personel</th>
                                                        <th>Tarih</th>
                                                        <th>Saat</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                    <td>Sektör</td>
                                                    <td>İl-İlçe</td>
                                                    <td>Firma-Şube</td>
                                                    <td>Bölüm-Personel</td>
                                                    <td>Tarih</td>
                                                    <td>Saat</td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                            <button class="btn btn-sm btn-success"  >
                                                <i class="ace-icon fa fa-check"></i>
                                                Oluştur 
                                                    
                                              
                                            </button>

                                        </div>


                                    </div>
                                </div>
                                <hr />
                                <div class="wizard-actions">
                                    <a class="btn btn-prev" href="javascript:void(0);">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        Önceki
                                    </a>
                                    <a class="btn btn-success btn-next" data-last="Kaydet" href="javascript:void(0);">
                                        Sonraki<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- /.widget-main -->
                        </div>
                        <!-- /.widget-body -->
                    </div>
             
                    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
                    </a>
                </div></ContentTemplate>
                    </asp:UpdatePanel>
            </div>
            <uc1:UCFooter runat="server" ID="UCFooter" />
        </div>
        <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    </form>
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


            //datepicker plugin
            //link
            $('.date-picker').datepicker({
                autoclose: true,
                todayHighlight: true
            })
                //show datepicker when clicking on the icon
                .next().on(ace.click_event, function () {
                    $(this).prev().focus();
                });
            $('#timepicker1').timepicker({
                minuteStep: 1,
                showSeconds: true,
                showMeridian: false,
                disableFocus: true,
                icons: {
                    up: 'fa fa-chevron-up',
                    down: 'fa fa-chevron-down'
                }
            }).on('focus', function () {
                $('#timepicker1').timepicker('showWidget');
            }).next().on(ace.click_event, function () {
                $(this).prev().focus();
            });
            $('[data-rel=tooltip]').tooltip();
            $('.select2').css('width', '200px').select2({ allowClear: true })
                .on('change', function () {
                    $(this).closest('form').validate().element($(this));
                });
            var $validation = false;
            $('#fuelux-wizard-container')
                .ace_wizard({
                    //step: 2 //optional argument. wizard will jump to step "2" at first
                    //buttons: '.wizard-actions:eq(0)'
                })
                .on('actionclicked.fu.wizard', function (e, info) {
                    if (info.step == 1 && $validation) {
                        if (!$('#validation-form').valid()) e.preventDefault();
                    }
                })
                //.on('changed.fu.wizard', function() {
                //})
                .on('finished.fu.wizard', function (e) {
                    bootbox.dialog({
                        message: "Başarılı Bir Şekilde Randevunuz Oluşturuldu... ",
                        buttons: {
                            "success": {
                                "label": "Kapat",
                                "className": "btn-sm btn-primary"
                            }
                        }
                    });
                }).on('stepclick.fu.wizard', function (e) {
                    //e.preventDefault();//this will prevent clicking and selecting steps
                });
            //jump to a step
            /**
            var wizard = $('#fuelux-wizard-container').data('fu.wizard')
            wizard.currentStep = 3;
            wizard.setState();
            */
            //determine selected step
            //wizard.selectedItem().step
            //hide or show the other form which requires validation
            //this is for demo only, you usullay want just one form in your application
            $('#skip-validation').removeAttr('checked').on('click', function () {
                $validation = this.checked;
                if (this.checked) {
                    $('#sample-form').hide();
                    $('#validation-form').removeClass('hide');
                }
                else {
                    $('#validation-form').addClass('hide');
                    $('#sample-form').show();
                }
            })
            //documentation : http://docs.jquery.com/Plugins/Validation/validate
            $.mask.definitions['~'] = '[+-]';
            $('#phone').mask('(999) 999-9999');

            jQuery.validator.addMethod("phone", function (value, element) {
                return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
            }, "Enter a valid phone number.");

            $('#validation-form').validate({
                errorElement: 'div',
                errorClass: 'help-block',
                focusInvalid: false,
                ignore: "",
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 5
                    },
                    password2: {
                        required: true,
                        minlength: 5,
                        equalTo: "#password"
                    },
                    name: {
                        required: true
                    },
                    phone: {
                        required: true,
                        phone: 'required'
                    },
                    url: {
                        required: true,
                        url: true
                    },
                    comment: {
                        required: true
                    },
                    state: {
                        required: true
                    },
                    platform: {
                        required: true
                    },
                    subscription: {
                        required: true
                    },
                    gender: {
                        required: true,
                    },
                    agree: {
                        required: true,
                    }
                },
                messages: {
                    email: {
                        required: "Please provide a valid email.",
                        email: "Please provide a valid email."
                    },
                    password: {
                        required: "Please specify a password.",
                        minlength: "Please specify a secure password."
                    },
                    state: "Please choose state",
                    subscription: "Please choose at least one option",
                    gender: "Please choose gender",
                    agree: "Please accept our policy"
                },
                highlight: function (e) {
                    $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
                },

                success: function (e) {
                    $(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
                    $(e).remove();
                },
                errorPlacement: function (error, element) {
                    if (element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
                        var controls = element.closest('div[class*="col-"]');
                        if (controls.find(':checkbox,:radio').length > 1) controls.append(error);
                        else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
                    }
                    else if (element.is('.select2')) {
                        error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
                    }
                    else if (element.is('.chosen-select')) {
                        error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
                    }
                    else error.insertAfter(element.parent());
                },
                submitHandler: function (form) {
                },
                invalidHandler: function (form) {
                }
            });
            $('#modal-wizard-container').ace_wizard();
            $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
            /**
            $('#date').datepicker({autoclose:true}).on('changeDate', function(ev) {
                $(this).closest('form').validate().element($(this));
            });
        	
            $('#mychosen').chosen().on('change', function(ev) {
                $(this).closest('form').validate().element($(this));
            });
            */
            $(document).one('ajaxloadstart.page', function (e) {
                //in ajax mode, remove remaining elements before leaving page
                $('[class*=select2]').remove();
            });
        })
    </script>
</body>
</html>
