﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Denemesayfasi.aspx.cs" Inherits="OnlineReservation.Web.Firms.Denemesayfasi" %>

<%@ Register Src="~/UserControls/UCHeader.ascx" TagPrefix="uc1" TagName="UCHeader" %>
<%@ Register Src="~/UserControls/UCSideBar.ascx" TagPrefix="uc1" TagName="UCSideBar" %>
<%@ Register Src="~/UserControls/UCFooter.ascx" TagPrefix="uc1" TagName="UCFooter" %>
<%@ Register Src="~/UserControls/UCFooterJS.ascx" TagPrefix="uc1" TagName="UCFooterJS" %>

<!DOCTYPE html>


<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>jqGrid - Ace Admin</title>

    <meta name="description" content="Dynamic tables and grids using jqGrid plugin" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/assets/css/jquery-ui.min.css" />
    <link rel="stylesheet" href="/assets/css/bootstrap-datepicker3.min.css" />
    <link rel="stylesheet" href="/assets/css/ui.jqgrid.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
    <link rel="stylesheet" href="/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
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
                            <li>Randevu Saatlerim
                            </li>

                        </ul>
                    </div>
                    <div class="page-content">

                        <div class="row">
                            <div class="col-xs-12" style="padding-left: 0;">
                                <div>
                                    <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Per.ADI</th>
                                                <th>Şube</th>
                                                <th>Bölüm</th>
                                                <th>Müsteri</th>
                                                <th>Tarih</th>
                                                <th>Saat</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>A personeli</td>
                                                <td>A Şubesi  </td>
                                                <td>A Bölümü</td>
                                                <td>Ali .</td>
                                                <td>12/15/15</td>
                                                <td>12:00</td>

                                            </tr>
                                            <tr>
                                                <td>B personeli</td>
                                                <td>B Şubesi</td>
                                                <td>B Bölümü</td>
                                                <td>Ahmet</td>
                                                <td>12/15/15</td>
                                                <td>12:00</td>


                                                <tr>
                                                    <td>C personeli</td>
                                                    <td>C Şubesi</td>
                                                    <td>C Bölümü</td>
                                                    <td>Ayşe</td>
                                                    <td>12/15/15</td>
                                                    <td>12:00</td>

                                                </tr>

                                            <tr>
                                                <td>D personeli</td>
                                                <td>D Şubesi</td>
                                                <td>D Bölümü</td>
                                                <td>Elif</td>
                                                <td>12/15/15</td>
                                                <td>12:00</td>

                                            </tr>
                                        </tbody>
                                    </table>
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





    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="/assets/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="/assets/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="/assets/js/bootstrap-datepicker.min.js"></script>
    <script src="/assets/js/jquery.jqGrid.min.js"></script>
    <script src="/assets/js/grid.locale-en.js"></script>

    <!-- ace scripts -->
    <script src="/assets/js/ace-elements.min.js"></script>
    <script src="/assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        var grid_data =
            [
                { id: "1", name: "Desktop Computer", note: "note", stock: "Yes", ship: "FedEx", sdate: "2007-12-03" },
                { id: "2", name: "Laptop", note: "Long text ", stock: "Yes", ship: "InTime", sdate: "2007-12-03" },
                { id: "3", name: "LCD Monitor", note: "note3", stock: "Yes", ship: "TNT", sdate: "2007-12-03" },
                { id: "4", name: "Speakers", note: "note", stock: "No", ship: "ARAMEX", sdate: "2007-12-03" },
                { id: "5", name: "Laser Printer", note: "note2", stock: "Yes", ship: "FedEx", sdate: "2007-12-03" },
                { id: "6", name: "Play Station", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03" },
                { id: "7", name: "Mobile Telephone", note: "note", stock: "Yes", ship: "ARAMEX", sdate: "2007-12-03" },
                { id: "8", name: "Server", note: "note2", stock: "Yes", ship: "TNT", sdate: "2007-12-03" },
                { id: "9", name: "Matrix Printer", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03" },
                { id: "10", name: "Desktop Computer", note: "note", stock: "Yes", ship: "FedEx", sdate: "2007-12-03" },
                { id: "11", name: "Laptop", note: "Long text ", stock: "Yes", ship: "InTime", sdate: "2007-12-03" },
                { id: "12", name: "LCD Monitor", note: "note3", stock: "Yes", ship: "TNT", sdate: "2007-12-03" },
                { id: "13", name: "Speakers", note: "note", stock: "No", ship: "ARAMEX", sdate: "2007-12-03" },
                { id: "14", name: "Laser Printer", note: "note2", stock: "Yes", ship: "FedEx", sdate: "2007-12-03" },
                { id: "15", name: "Play Station", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03" },
                { id: "16", name: "Mobile Telephone", note: "note", stock: "Yes", ship: "ARAMEX", sdate: "2007-12-03" },
                { id: "17", name: "Server", note: "note2", stock: "Yes", ship: "TNT", sdate: "2007-12-03" },
                { id: "18", name: "Matrix Printer", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03" },
                { id: "19", name: "Matrix Printer", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03" },
                { id: "20", name: "Desktop Computer", note: "note", stock: "Yes", ship: "FedEx", sdate: "2007-12-03" },
                { id: "21", name: "Laptop", note: "Long text ", stock: "Yes", ship: "InTime", sdate: "2007-12-03" },
                { id: "22", name: "LCD Monitor", note: "note3", stock: "Yes", ship: "TNT", sdate: "2007-12-03" },
                { id: "23", name: "Speakers", note: "note", stock: "No", ship: "ARAMEX", sdate: "2007-12-03" }
            ];

        var subgrid_data =
            [
                { id: "1", name: "sub grid item 1", qty: 11 },
                { id: "2", name: "sub grid item 2", qty: 3 },
                { id: "3", name: "sub grid item 3", qty: 12 },
                { id: "4", name: "sub grid item 4", qty: 5 },
                { id: "5", name: "sub grid item 5", qty: 2 },
                { id: "6", name: "sub grid item 6", qty: 9 },
                { id: "7", name: "sub grid item 7", qty: 3 },
                { id: "8", name: "sub grid item 8", qty: 8 }
            ];

        jQuery(function ($) {
            var grid_selector = "#grid-table";
            var pager_selector = "#grid-pager";


            var parent_column = $(grid_selector).closest('[class*="col-"]');
            //resize to fit page size
            $(window).on('resize.jqGrid', function () {
                $(grid_selector).jqGrid('setGridWidth', parent_column.width());
            })

            //resize on sidebar collapse/expand
            $(document).on('settings.ace.jqGrid', function (ev, event_name, collapsed) {
                if (event_name === 'sidebar_collapsed' || event_name === 'main_container_fixed') {
                    //setTimeout is for webkit only to give time for DOM changes and then redraw!!!
                    setTimeout(function () {
                        $(grid_selector).jqGrid('setGridWidth', parent_column.width());
                    }, 20);
                }
            })

            //if your grid is inside another element, for example a tab pane, you should use its parent's width:
            /**
            $(window).on('resize.jqGrid', function () {
                var parent_width = $(grid_selector).closest('.tab-pane').width();
                $(grid_selector).jqGrid( 'setGridWidth', parent_width );
            })
            //and also set width when tab pane becomes visible
            $('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
              if($(e.target).attr('href') == '#mygrid') {
                var parent_width = $(grid_selector).closest('.tab-pane').width();
                $(grid_selector).jqGrid( 'setGridWidth', parent_width );
              }
            })
            */





            jQuery(grid_selector).jqGrid({
                //direction: "rtl",

                //subgrid options
                subGrid: true,
                //subGridModel: [{ name : ['No','Item Name','Qty'], width : [55,200,80] }],
                //datatype: "xml",
                subGridOptions: {
                    plusicon: "ace-icon fa fa-plus center bigger-110 blue",
                    minusicon: "ace-icon fa fa-minus center bigger-110 blue",
                    openicon: "ace-icon fa fa-chevron-right center orange"
                },
                //for this example we are using local data
                subGridRowExpanded: function (subgridDivId, rowId) {
                    var subgridTableId = subgridDivId + "_t";
                    $("#" + subgridDivId).html("<table id='" + subgridTableId + "'></table>");
                    $("#" + subgridTableId).jqGrid({
                        datatype: 'local',
                        data: subgrid_data,
                        colNames: ['No', 'Item Name', 'Qty'],
                        colModel: [
                            { name: 'id', width: 50 },
                            { name: 'name', width: 150 },
                            { name: 'qty', width: 50 }
                        ]
                    });
                },



                data: grid_data,
                datatype: "local",
                height: 250,
                colNames: [' ', 'ID', 'Last Sales', 'Name', 'Stock', 'Ship via', 'Notes'],
                colModel: [
                    {
                        name: 'myac', index: '', width: 80, fixed: true, sortable: false, resize: false,
                        formatter: 'actions',
                        formatoptions: {
                            keys: true,
                            //delbutton: false,//disable delete button

                            delOptions: { recreateForm: true, beforeShowForm: beforeDeleteCallback },
                            //editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
                        }
                    },
                    { name: 'id', index: 'id', width: 60, sorttype: "int", editable: true },
                    { name: 'sdate', index: 'sdate', width: 90, editable: true, sorttype: "date", unformat: pickDate },
                    { name: 'name', index: 'name', width: 150, editable: true, editoptions: { size: "20", maxlength: "30" } },
                    { name: 'stock', index: 'stock', width: 70, editable: true, edittype: "checkbox", editoptions: { value: "Yes:No" }, unformat: aceSwitch },
                    { name: 'ship', index: 'ship', width: 90, editable: true, edittype: "select", editoptions: { value: "FE:FedEx;IN:InTime;TN:TNT;AR:ARAMEX" } },
                    { name: 'note', index: 'note', width: 150, sortable: false, editable: true, edittype: "textarea", editoptions: { rows: "2", cols: "10" } }
                ],

                viewrecords: true,
                rowNum: 10,
                rowList: [10, 20, 30],
                pager: pager_selector,
                altRows: true,
                //toppager: true,

                multiselect: true,
                //multikey: "ctrlKey",
                multiboxonly: true,

                loadComplete: function () {
                    var table = this;
                    setTimeout(function () {
                        styleCheckbox(table);

                        updateActionIcons(table);
                        updatePagerIcons(table);
                        enableTooltips(table);
                    }, 0);
                },

                editurl: "./dummy.php",//nothing is saved
                caption: "Randevu Programınız"

                //,autowidth: true,


                /**
                ,
                grouping:true, 
                groupingView : { 
                     groupField : ['name'],
                     groupDataSorted : true,
                     plusicon : 'fa fa-chevron-down bigger-110',
                     minusicon : 'fa fa-chevron-up bigger-110'
                },
                caption: "Grouping"
                */

            });
            $(window).triggerHandler('resize.jqGrid');//trigger window resize to make the grid get the correct size



            //enable search/filter toolbar
            //jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
            //jQuery(grid_selector).filterToolbar({});


            //switch element when editing inline
            function aceSwitch(cellvalue, options, cell) {
                setTimeout(function () {
                    $(cell).find('input[type=checkbox]')
                        .addClass('ace ace-switch ace-switch-5')
                        .after('<span class="lbl"></span>');
                }, 0);
            }
            //enable datepicker
            function pickDate(cellvalue, options, cell) {
                setTimeout(function () {
                    $(cell).find('input[type=text]')
                        .datepicker({ format: 'yyyy-mm-dd', autoclose: true });
                }, 0);
            }


            //navButtons
            jQuery(grid_selector).jqGrid('navGrid', pager_selector,
                { 	//navbar options
                    edit: true,
                    editicon: 'ace-icon fa fa-pencil blue',
                    add: true,
                    addicon: 'ace-icon fa fa-plus-circle purple',
                    del: true,
                    delicon: 'ace-icon fa fa-trash-o red',
                    search: true,
                    searchicon: 'ace-icon fa fa-search orange',
                    refresh: true,
                    refreshicon: 'ace-icon fa fa-refresh green',
                    view: true,
                    viewicon: 'ace-icon fa fa-search-plus grey',
                },
                {
                    //edit record form
                    //closeAfterEdit: true,
                    //width: 700,
                    recreateForm: true,
                    beforeShowForm: function (e) {
                        var form = $(e[0]);
                        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                        style_edit_form(form);
                    }
                },
                {
                    //new record form
                    //width: 700,
                    closeAfterAdd: true,
                    recreateForm: true,
                    viewPagerButtons: false,
                    beforeShowForm: function (e) {
                        var form = $(e[0]);
                        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar')
                            .wrapInner('<div class="widget-header" />')
                        style_edit_form(form);
                    }
                },
                {
                    //delete record form
                    recreateForm: true,
                    beforeShowForm: function (e) {
                        var form = $(e[0]);
                        if (form.data('styled')) return false;

                        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                        style_delete_form(form);

                        form.data('styled', true);
                    },
                    onClick: function (e) {
                        //alert(1);
                    }
                },
                {
                    //search form
                    recreateForm: true,
                    afterShowSearch: function (e) {
                        var form = $(e[0]);
                        form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
                        style_search_form(form);
                    },
                    afterRedraw: function () {
                        style_search_filters($(this));
                    }
                    ,
                    multipleSearch: true,
                    /**
                    multipleGroup:true,
                    showQuery: true
                    */
                },
                {
                    //view record form
                    recreateForm: true,
                    beforeShowForm: function (e) {
                        var form = $(e[0]);
                        form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
                    }
                }
            )



            function style_edit_form(form) {
                //enable datepicker on "sdate" field and switches for "stock" field
                form.find('input[name=sdate]').datepicker({ format: 'yyyy-mm-dd', autoclose: true })

                form.find('input[name=stock]').addClass('ace ace-switch ace-switch-5').after('<span class="lbl"></span>');
                //don't wrap inside a label element, the checkbox value won't be submitted (POST'ed)
                //.addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');


                //update buttons classes
                var buttons = form.next().find('.EditButton .fm-button');
                buttons.addClass('btn btn-sm').find('[class*="-icon"]').hide();//ui-icon, s-icon
                buttons.eq(0).addClass('btn-primary').prepend('<i class="ace-icon fa fa-check"></i>');
                buttons.eq(1).prepend('<i class="ace-icon fa fa-times"></i>')

                buttons = form.next().find('.navButton a');
                buttons.find('.ui-icon').hide();
                buttons.eq(0).append('<i class="ace-icon fa fa-chevron-left"></i>');
                buttons.eq(1).append('<i class="ace-icon fa fa-chevron-right"></i>');
            }

            function style_delete_form(form) {
                var buttons = form.next().find('.EditButton .fm-button');
                buttons.addClass('btn btn-sm btn-white btn-round').find('[class*="-icon"]').hide();//ui-icon, s-icon
                buttons.eq(0).addClass('btn-danger').prepend('<i class="ace-icon fa fa-trash-o"></i>');
                buttons.eq(1).addClass('btn-default').prepend('<i class="ace-icon fa fa-times"></i>')
            }

            function style_search_filters(form) {
                form.find('.delete-rule').val('X');
                form.find('.add-rule').addClass('btn btn-xs btn-primary');
                form.find('.add-group').addClass('btn btn-xs btn-success');
                form.find('.delete-group').addClass('btn btn-xs btn-danger');
            }
            function style_search_form(form) {
                var dialog = form.closest('.ui-jqdialog');
                var buttons = dialog.find('.EditTable')
                buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'ace-icon fa fa-retweet');
                buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'ace-icon fa fa-comment-o');
                buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'ace-icon fa fa-search');
            }

            function beforeDeleteCallback(e) {
                var form = $(e[0]);
                if (form.data('styled')) return false;

                form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                style_delete_form(form);

                form.data('styled', true);
            }

            function beforeEditCallback(e) {
                var form = $(e[0]);
                form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                style_edit_form(form);
            }



            //it causes some flicker when reloading or navigating grid
            //it may be possible to have some custom formatter to do this as the grid is being created to prevent this
            //or go back to default browser checkbox styles for the grid
            function styleCheckbox(table) {
                /**
                    $(table).find('input:checkbox').addClass('ace')
                    .wrap('<label />')
                    .after('<span class="lbl align-top" />')
        	
        	
                    $('.ui-jqgrid-labels th[id*="_cb"]:first-child')
                    .find('input.cbox[type=checkbox]').addClass('ace')
                    .wrap('<label />').after('<span class="lbl align-top" />');
                */
            }


            //unlike navButtons icons, action icons in rows seem to be hard-coded
            //you can change them like this in here if you want
            function updateActionIcons(table) {
                /**
                var replacement = 
                {
                    'ui-ace-icon fa fa-pencil' : 'ace-icon fa fa-pencil blue',
                    'ui-ace-icon fa fa-trash-o' : 'ace-icon fa fa-trash-o red',
                    'ui-icon-disk' : 'ace-icon fa fa-check green',
                    'ui-icon-cancel' : 'ace-icon fa fa-times red'
                };
                $(table).find('.ui-pg-div span.ui-icon').each(function(){
                    var icon = $(this);
                    var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
                    if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
                })
                */
            }

            //replace icons with FontAwesome icons like above
            function updatePagerIcons(table) {
                var replacement =
                    {
                        'ui-icon-seek-first': 'ace-icon fa fa-angle-double-left bigger-140',
                        'ui-icon-seek-prev': 'ace-icon fa fa-angle-left bigger-140',
                        'ui-icon-seek-next': 'ace-icon fa fa-angle-right bigger-140',
                        'ui-icon-seek-end': 'ace-icon fa fa-angle-double-right bigger-140'
                    };
                $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function () {
                    var icon = $(this);
                    var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

                    if ($class in replacement) icon.attr('class', 'ui-icon ' + replacement[$class]);
                })
            }

            function enableTooltips(table) {
                $('.navtable .ui-pg-button').tooltip({ container: 'body' });
                $(table).find('.ui-pg-div').tooltip({ container: 'body' });
            }

            //var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');

            $(document).one('ajaxloadstart.page', function (e) {
                $.jgrid.gridDestroy(grid_selector);
                $('.ui-jqdialog').remove();
            });
        });
    </script>
</body>
</html>

