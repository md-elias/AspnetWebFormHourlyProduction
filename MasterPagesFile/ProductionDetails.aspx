<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductionDetails.aspx.cs" Inherits="IndividualUserAccount.MasterPagesFile.ProductionDetails" %>

<%@ Register Src="~/UserControl/ProductionUsrCtrl.ascx" TagPrefix="uc1" TagName="ProductionUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<uc1:ProductionUsrCtrl runat="server" ID="ProductionUsrCtrl" />

</asp:Content>
