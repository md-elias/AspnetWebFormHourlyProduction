<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="LineDetails.aspx.cs" Inherits="IndividualUserAccount.MasterPagesFile.LineDetails" %>

<%@ Register Src="~/UserControl/LineUsrCtrl.ascx" TagPrefix="uc1" TagName="LineUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainAdmin" runat="server">
<uc1:lineusrctrl runat="server" id="LineUsrCtrl" />

</asp:Content>
