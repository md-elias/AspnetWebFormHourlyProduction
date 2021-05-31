<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminPanel.Master" AutoEventWireup="true" CodeBehind="ProductionDetailsInfo.aspx.cs" Inherits="IndividualUserAccount.Management.ProductionDetailsInfo" %>

<%@ Register Src="~/UserControl/ProductionUsrCtrl.ascx" TagPrefix="uc1" TagName="ProductionUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<uc1:ProductionUsrCtrl runat="server" ID="ProductionUsrCtrl" />

</asp:Content>
