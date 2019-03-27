<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CAT.Docker.Web._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript">
        function popreport() {
            window.open('Reporting/ViewReport.aspx' +'','height=' + (screen.availHeight * 0.9) + ',width=' + (screen.availWidth * 0.95) + ',status=yes,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes');
        }
    </script> 

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to Docker Web App
    </h2>
   
    <div>
        <button onclick="javascript:popreport();return false;">View Report</button>
    </div>
</asp:Content>
