<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="IndividualUserAccount.MasterPagesFile.OrderDetails" %>

<%@ Register Src="~/UserControl/OrderDetailUsrCtrl.ascx" TagPrefix="uc1" TagName="OrderDetailUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
<uc1:OrderDetailUsrCtrl runat="server" ID="OrderDetailUsrCtrl" />

</asp:Content>
