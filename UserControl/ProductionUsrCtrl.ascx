<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductionUsrCtrl.ascx.cs" Inherits="IndividualUserAccount.UserControl.ProductionUsrCtrl" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        width: 553px;
    }
    .auto-style4 {
        width: 239px;
    }
</style>


<table class="auto-style1">
    <tr>
        <td colspan="2"><strong>Hourly Production Details For Asian Group</strong></td>
        <td><strong></strong></td>
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
        <td rowspan="8">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProductionDetailsId" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ProductionDetailsId" HeaderText="ProductionDetailsId" InsertVisible="False" ReadOnly="True" SortExpression="ProductionDetailsId" />
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                    <asp:BoundField DataField="LineId" HeaderText="LineId" SortExpression="LineId" />
                    <asp:BoundField DataField="HourlyProduction" HeaderText="HourlyProduction" SortExpression="HourlyProduction" />
                    <asp:BoundField DataField="InspectionQuantity" HeaderText="InspectionQuantity" SortExpression="InspectionQuantity" />
                    <asp:BoundField DataField="PassQuantity" HeaderText="PassQuantity" SortExpression="PassQuantity" />
                    <asp:BoundField DataField="DefectiveQuantity" HeaderText="DefectiveQuantity" ReadOnly="True" SortExpression="DefectiveQuantity" />
                    <asp:BoundField DataField="ProductionDate" HeaderText="ProductionDate" SortExpression="ProductionDate" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ProductionDetails]"></asp:SqlDataSource>
        </td>
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
        <td class="auto-style4">
            <asp:Label ID="lblHourProd" runat="server" Text="Hour"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtHour" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblInspectQty" runat="server" Text="InspectionQuantity"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtInspQty" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblPassQty" runat="server" Text="PassQuantity"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPassQty" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblDeftQty" runat="server" Text="DefectiveQuantity"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtDefQty" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblPrdDate" runat="server" Text="ProductionDate"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtProDate" runat="server" Width="200px" TextMode="DateTime"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblTid" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel Operation" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>


