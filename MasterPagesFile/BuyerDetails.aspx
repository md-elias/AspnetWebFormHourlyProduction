<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="BuyerDetails.aspx.cs" Inherits="IndividualUserAccount.MasterPagesFile.BuyerDetails" %>

<%@ Register Src="~/UserControl/BuyerUsrCtrl.ascx" TagPrefix="uc1" TagName="BuyerUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
<uc1:BuyerUsrCtrl runat="server" ID="BuyerUsrCtrl" />

</asp:Content>
