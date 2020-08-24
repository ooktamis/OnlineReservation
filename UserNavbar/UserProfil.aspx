<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfil.aspx.cs" Inherits="OnlineReservation.Web.UserNavbar.UserProfil" %>


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
                                    <i class="ace-icon fa fa-building building-icon"></i>
                                    Kullanıcı Profili
                                </li>
                            </ul>
                        </div>
                        <div class="page-content">

                            <div class="row">
                                <div class="col-xs-12 ">
                                    <div class="col-xs-2">
                                        <span class="profile-picture">
                                            <img id="avatar" class="editable img-responsive editable-click editable-empty "
                                                alt="Alex's Avatar" src="/assets/images/avatars/profile-pic.jpg" style="display: block;">
                                        </span>
                                    </div>
                                    <div class="widget-box col-xs-10">
                                        <div class="widget-header">
                                            <h4 class="widget-title">Ayarlar</h4>
                                           
                                        </div>
                                        <div class="widget-body col-xs-10">
                                            <div class="widget-main">
                                                <div class="row">
                                                    <table>
                                                        <tr>
                                                            <td class="col-xs-2">
                                                                <div>
                                                                    <b>Adı:</b>
                                                                </div>
                                                            </td>
                                                            <td class="col-xs-3">
                                                                <div>
                                                                    <asp:TextBox ID="txtUserName" runat="server" class="form-control"></asp:TextBox><br />
                                                                </div>
                                                            </td>
                                                            <td class="col-xs-2">
                                                                <div>
                                                                    <b>Soyadı:</b>
                                                                </div>
                                                            </td>
                                                            <td class="col-xs-3">
                                                                <div>
                                                                    <asp:TextBox ID="txtUserSurname" runat="server" class="form-control"></asp:TextBox><br />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-xs-2">
                                                                <b>E-mail:</b>
                                                            </td>
                                                            <td class="col-xs-3">
                                                                <asp:TextBox ID="txtUserEmail" runat="server" class="form-control"></asp:TextBox><br />
                                                            </td>
                                                            <td class="col-xs-2">
                                                                <b>Telefon:</b>
                                                            </td>
                                                            <td class="col-xs-3">
                                                                <asp:TextBox ID="txtUserPhone" runat="server" class="form-control"></asp:TextBox><br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-xs-2">
                                                                <b>Yeni Şifre:</b>
                                                            </td>
                                                            <td class="col-xs-3">
                                                                <asp:TextBox ID="txtUserPassword" runat="server" class="form-control"></asp:TextBox>
                                                            </td>
                                                             <td class="col-xs-2">
                                                           <button class="btn btn-sm btn-success pull-right kaydetbuton" style="height: 38px;" data-dismiss="modal">
                                                                  <i class="ace-icon fa fa-check"></i>Kaydet
                                                           </button>
                                                             </td>
                                                        </tr>
                                                    </table>
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
</body>
<script type="text/javascript">
    jQuery(function ($) {
        $(".kaydetbuton").click(function () {
            alert("Kaydedildi.");
        });


        $(document).on("click", ".editable-cancel", function () {
            InitEditableImage();
            //$(this).closest(".editable-container").remove();
            //$("#avatar").show();
        });
        InitEditableImage();
        //$(".editable-cancel").click(function () {
        //    alert("sdfsdf");
        //});

        //editables on first profile page
        $.fn.editable.defaults.mode = 'inline';
        $.fn.editableform.loading = "<div class='editableform-loading'><i class='ace-icon fa fa-spinner fa-spin fa-2x light-blue'></i></div>";
        $.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="ace-icon fa fa-check"></i></button>' +
            '<button type="button" class="btn editable-cancel"><i class="ace-icon fa fa-times"></i></button>';

        $().click(function () {
            alert("Kaydedildi.");
        });
        // *** editable avatar *** //
       

        /**
        //let's display edit mode by default?
        var blank_image = true;//somehow you determine if image is initially blank or not, or you just want to display file input at first
        if(blank_image) {
            $('#avatar').editable('show').on('hidden', function(e, reason) {
                if(reason == 'onblur') {
                    $('#avatar').editable('show');
                    return;
                }
                $('#avatar').off('hidden');
            })
        }
        */





    });

    function InitEditableImage() {
        var last_gritter
        $('#avatar').editable({
            type: 'image',
            name: 'avatar',
            value: null,
            //onblur: 'ignore',  //don't reset or hide editable onblur?!
            image: {
                //specify ace file input plugin's options here
                btn_choose: 'Change Avatar',
                droppable: true,
                maxSize: 310000,//~100Kb

                //and a few extra ones here
                name: 'avatar',//put the field name here as well, will be used inside the custom plugin
                on_error: function (error_type) {//on_error function will be called when the selected file has a problem
                    if (last_gritter) $.gritter.remove(last_gritter);
                    if (error_type == 1) {//file format error
                        last_gritter = $.gritter.add({
                            title: 'File is not an image!',
                            text: 'Please choose a jpg|gif|png image!',
                            class_name: 'gritter-error gritter-center'
                        });
                    } else if (error_type == 2) {//file size rror
                        last_gritter = $.gritter.add({
                            title: 'File too big!',
                            text: 'Image size should not exceed 100Kb!',
                            class_name: 'gritter-error gritter-center'
                        });
                    }
                    else {//other error
                    }
                },
                on_success: function () {
                    $.gritter.removeAll();
                }
            },
            url: function (params) {
                // ***UPDATE AVATAR HERE*** //
                //for a working upload example you can replace the contents of this function with 
                //examples/profile-avatar-update.js

                var deferred = new $.Deferred

                var value = $('#avatar').next().find('input[type=hidden]:eq(0)').val();
                if (!value || value.length == 0) {
                    deferred.resolve();
                    return deferred.promise();
                }


                //dummy upload
                setTimeout(function () {
                    if ("FileReader" in window) {
                        //for browsers that have a thumbnail of selected image
                        var thumb = $('#avatar').next().find('img').data('thumb');
                        if (thumb) $('#avatar').get(0).src = thumb;
                    }

                    deferred.resolve({ 'status': 'OK' });

                    if (last_gritter) $.gritter.remove(last_gritter);
                    last_gritter = $.gritter.add({
                        title: 'Avatar Updated!',
                        text: 'Uploading to server can be easily implemented. A working example is included with the template.',
                        class_name: 'gritter-info gritter-center'
                    });

                }, parseInt(Math.random() * 800 + 800))

                return deferred.promise();

                // ***END OF UPDATE AVATAR HERE*** //
            },

            success: function (response, newValue) {
            }
        })
    }
</script>
</html>
