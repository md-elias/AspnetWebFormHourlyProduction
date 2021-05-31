<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BuyerUsrCtrl.ascx.cs" Inherits="IndividualUserAccount.UserControl.BuyerUsrCtrl" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: large;
    }
    .auto-style3 {
        width: 237px;
    }
    .auto-style4 {
        width: 237px;
        height: 57px;
    }
    .auto-style5 {
        height: 57px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Buyer Information </strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblBuyer" runat="server" Font-Bold="True" Text="Buyer Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Height="33px" Width="253px"></asp:TextBox>
        </td>
        <td colspan="2" rowspan="4">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="BuyerId" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="93px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="370px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="BuyerId" HeaderText="BuyerId" InsertVisible="False" ReadOnly="True" SortExpression="BuyerId" />
                    <asp:BoundField DataField="BuyerName" HeaderText="BuyerName" SortExpression="BuyerName" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BuyerInfo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblActive" runat="server" Font-Bold="True" Text="IsActive"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkIsActive" runat="server" Text="Yes" />
&nbsp;
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" BackColor="#FF3300" OnClick="btnDelete_Click" Text="Delete" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Button ID="btnCancel" runat="server" Height="40px" OnClick="btnCancel_Click" Text="Cancel" Width="211px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblTid" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

