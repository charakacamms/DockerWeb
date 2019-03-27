<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Reporting/ReportPopup.Master" CodeBehind="ViewReport.aspx.cs" Inherits="CAT.Docker.Web.Reporting.ViewReport" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="pnlReportPreview" runat="server">

        <iframe id="ifReport" runat="server" class="viewReportiframe" width="99%"></iframe>

    </asp:Panel>
    <script type="text/javascript">
        var pageHeight = jQuery(window).height();
        var navHeight = pageHeight - 160;
        //alert(navHeight);
        jQuery('#<%= ifReport.ClientID %>').css({ "min-height": navHeight + 'px' });
        $(window).resize(function () {
            var pageHeight = jQuery(window).height();
            var navHeight = pageHeight - 160;
            jQuery('#<%= ifReport.ClientID %>').css({ "min-height": navHeight + 'px' });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            height: 18px;
        }
        #ifReport {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>


