<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HourlyProductionUsrCtrl.ascx.cs" Inherits="IndividualUserAccount.UserControl.HourlyProductionUsrCtrl" %>
<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
        width: 239px;
    }
    .auto-style3 {
        width: 553px;
    }
    .auto-style5 {
        width: 239px;
        height: 31px;
    }
    .auto-style6 {
        width: 553px;
        height: 31px;
    }
    .auto-style7 {
        width: 239px;
        height: 39px;
    }
    .auto-style8 {
        width: 553px;
        height: 39px;
    }
</style>


<table class="auto-style1">
    <tr>
        <td colspan="2" class="auto-style5"><strong><b>Hourly Production Details For Asian Group</b></strong></td>
        <td>&nbsp;</td>
    </tr> 
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblOrder" runat="server" Text="OrderInfo"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlOrder" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="OrderId" DataValueField="OrderId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [OrderInfo]"></asp:SqlDataSource>
        </td>
        <td rowspan="10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblLine" runat="server" Text="LineInfo"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlLine" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="FloorName" DataValueField="LineId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [LineInfo]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BuyerInfo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="lblHourProd" runat="server" Text="Hour"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtHour" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHour" ErrorMessage="Hour Must Be Input" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblInspectQty" runat="server" Text="InspectionQuantity"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtInspQty" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtInspQty" ErrorMessage="Inspection Quantity Must Be Filled" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblPassQty" runat="server" Text="PassQuantity"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPassQty" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassQty" ErrorMessage="Pass Quantity Must Be Filled" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblTotalDft" runat="server" Text="TotalDefects"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtTotalDft" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="False">Please Provide All Values</asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="lblTid" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" CssClass="btn btn-warning" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"/>
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"/>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style8">
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel Operation" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    </table>


<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProductionId" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="ProductionId" HeaderText="PrID" InsertVisible="False" ReadOnly="True" SortExpression="ProductionId" />
        <asp:BoundField DataField="OrderId" HeaderText="OrID" SortExpression="OrderId" />
        <asp:BoundField DataField="LineId" HeaderText="LID" SortExpression="LineId" />
        <asp:BoundField DataField="HourlyProduction" HeaderText="Hour" SortExpression="HourlyProduction" />
        <asp:BoundField DataField="InspectionQuantity"  HeaderText="InspectionQty" SortExpression="InspectionQuantity" />
        <asp:BoundField DataField="PassQuantity" HeaderText="PassQ" SortExpression="PassQuantity" />
        <asp:BoundField DataField="TotalDefects" HeaderText="TotalDefects" SortExpression="TotalDefects" />
        <asp:BoundField DataField="DHU" HeaderText="DHU" DataFormatString="{0:F2}" ReadOnly="True" SortExpression="DHU" />
        <asp:BoundField DataField="DefectiveQuantity" HeaderText="DefectiveQuantity" ReadOnly="True" SortExpression="DefectiveQuantity" />
        <asp:BoundField DataField="PercentDefectice" HeaderText="PercentDefect(%)" DataFormatString="{0:F2}" ReadOnly="True" SortExpression="PercentDefectice" />
        <asp:BoundField DataField="ProductionDate" HeaderText="ProductionDate" SortExpression="ProductionDate" />
        <asp:BoundField DataField="UserSystemId" HeaderText="UserSystemId" SortExpression="UserSystemId" />
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Production]"></asp:SqlDataSource>
