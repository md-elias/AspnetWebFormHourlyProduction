<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LineUsrCtrl.ascx.cs" Inherits="IndividualUserAccount.UserControl.LineUsrCtrl" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        width: 280px;
    }
    .auto-style4 {
        width: 239px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="2"><strong>Asian Group Line Information For Production </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblLineInfo" runat="server" Text="Line Info"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtLine" runat="server"></asp:TextBox>
        </td>
        <td rowspan="4">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="LineId" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="LineId" HeaderText="LineId" InsertVisible="False" ReadOnly="True" SortExpression="LineId" />
                    <asp:BoundField DataField="LineName" HeaderText="LineName" SortExpression="LineName" />
                    <asp:BoundField DataField="FloorName" HeaderText="FloorName" SortExpression="FloorName" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [LineInfo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblFloorInfo" runat="server" Text="Floor Info"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtFloor" runat="server"></asp:TextBox>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblTid" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel Operation" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

