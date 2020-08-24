<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineReservation.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Hasta Giriş Ekranı</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="/assets/css/ace.min.css" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="/assets/css/ace-part2.min.css" />
		<![endif]-->
    <link rel="stylesheet" href="/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="/assets/css/ace-ie.min.css" />
		<![endif]-->

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="/assets/js/html5shiv.min.js"></script>
		<script src="/assets/js/respond.min.js"></script>
		<![endif]-->

</head>
<body class="login-layout" style="background-color: #E4E6E9;">
    <form id="form1" runat="server">
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container">
                            <div class="center">
                                <h1>
                                    <i class="ace-icon fa fa-leaf green"></i>
                                    <span class="red">ÜYE</span>
                                    <span class="red" id="id-text2">GİRİŞİ</span>
                                </h1>
                                <h4 class="blue" id="id-company-text">&copy; Novartz BİLİŞİM</h4>
                            </div>
                            <div class="space-6"></div>
                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header blue lighter bigger">
                                                <i class="ace-icon fa fa-coffee green"></i>
                                                Lütfen Bilgilerinizi Girin
                                            </h4>
                                            <div class="space-6"></div>
                                            <fieldset>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <asp:TextBox ID="User_Name" class="form-control" placeholder="E-mail giriniz" runat="server" />
                                                    </span>
                                                </label>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <asp:TextBox ID="Password1" class="form-control" placeholder="Şifre giriniz " TextMode="Password" runat="server" />
                                                    </span>
                                                </label>
                                                <div class="space"></div>
                                                <div class="clearfix">
                                                    <label class="inline">
                                                        <asp:CheckBox ID="txt_Checkbox" class="ace" runat="server" />
                                                        <span class="lbl">Beni Unutma </span>
                                                    </label>
                                                    <asp:LinkButton ID="btnLogin" class="width-35 pull-right btn btn-sm btn-primary bigger-110" runat="server" OnClick="BtnLogin_Click"><i class="ace-icon fa fa-key"></i>Giriş</asp:LinkButton>
                                                </div>
                                                <div class="space-4"></div>
                                            </fieldset>
                                            <div class="space-6"></div>

                                            <div class="social-login center">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="toolbar clearfix">
                                        <div>
                                            <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                                <i class="ace-icon fa fa-arrow-left"></i>
                                                Şifremi Unuttum
                                            </a>
                                        </div>
                                        <div>
                                            <a href="#" data-target="#signup-box" class="user-signup-link">Kaydol
													<i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="forgot-box" class="forgot-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header red lighter bigger">
                                                <i class="ace-icon fa fa-key"></i>
                                                Parola Al
                                            </h4>
                                            <div class="space-6"></div>
                                            <p>
                                                Talimatları almak için mailinizi giriniz
                                            </p>
                                            <fieldset>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <asp:TextBox ID="email" runat="server" class="form-control" placeholder="E-mail giriniz">
                                                        </asp:TextBox>
                                                    </span>
                                                </label>

                                                <div class="clearfix">
                                                    <asp:LinkButton ID="SenMe" runat="server" class="width-35 pull-right btn btn-sm btn-danger bigger-110 "><i class="ace-icon fa fa-lightbulb-o">Gönder</i> </asp:LinkButton>
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">Girişe geri dön
												<i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="signup-box" class="signup-box widget-box no-border">

                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header green lighter bigger">
                                            <i class="ace-icon fa fa-users blue"></i>
                                            Yeni Kullanıcı Kaydı
                                        </h4>

                                        <div class="space-6"></div>
                                        <p>Lütfen Bilgilerinizi Giriniz: </p>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Adı"></asp:TextBox>
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <asp:TextBox ID="txt_LastName" runat="server" class="form-control" placeholder="Soyadı"></asp:TextBox>
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <asp:TextBox ID="txt_Phone" runat="server" class="form-control" placeholder="Telefon"></asp:TextBox>
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <asp:TextBox ID="txt_Mail" runat="server" class="form-control" placeholder="E-mail"></asp:TextBox>
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <asp:TextBox ID="txt_Password" runat="server" class="form-control" TextMode="Password" placeholder="Parola"></asp:TextBox>
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <asp:TextBox ID="txt_RepaterPassword" class="form-control" runat="server" TextMode="Password" placeholder="Tekrar Parola"></asp:TextBox>
                                                </span>
                                            </label>
                                            <div class="space-24"></div>
                                            <div class="clearfix">
                                                <asp:Button ID="Ukayit" runat="server" OnClick="Save_Click" class="width-65 pull-right btn btn-sm btn-success" Text="Kayıt Ol"></asp:Button>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="toolbar center">
                                        <a href="#" data-target="#login-box" class="back-to-login-link">
                                            <i class="ace-icon fa fa-arrow-left"></i>
                                            Girişe Geri Dön
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--[if !IE]> -->
        <script src="/assets/js/jquery-2.1.4.min.js"></script>
        <script src="/assets/js/jquery.maskedinput.min.js"></script>
        <!-- <![endif]-->

        <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function ($) {
                $(document).on('click', '.toolbar a[data-target]', function (e) {
                    e.preventDefault();
                    var target = $(this).data('target');
                    $('.widget-box.visible').removeClass('visible');//hide others
                    $(target).addClass('visible');//show target
                });
            });

            //todo: repeater ile oluşturduğumuz tablodaki butona tıkladığımız 
            //zaman onun manuel olarak atadığımız attributunü getirip ekrana basmamızı sağlar
            $(".opr").click(function () {
                alert("Seçilen değer :" + $(this).attr("recid"));
            });


            //you don't need this, just used for changing background
            jQuery(function ($) {
                $('#btn-login-dark').on('click', function (e) {
                    $('body').attr('class', 'login-layout');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-light').on('click', function (e) {
                    $('body').attr('class', 'login-layout light-login');
                    $('#id-text2').attr('class', 'grey');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-blur').on('click', function (e) {
                    $('body').attr('class', 'login-layout blur-login');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'light-blue');

                    e.preventDefault();
                });


                $("#txt_Phone").mask("(999) 999-99-99");

            });
        </script>

    </form>
</body>
</html>
