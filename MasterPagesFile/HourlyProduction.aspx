<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="HourlyProduction.aspx.cs" Inherits="IndividualUserAccount.MasterPagesFile.HourlyProduction" %>

<%@ Register Src="~/UserControl/HourlyProductionUsrCtrl.ascx" TagPrefix="uc1" TagName="HourlyProductionUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
<uc1:HourlyProductionUsrCtrl runat="server" ID="HourlyProductionUsrCtrl" />

</asp:Content>
