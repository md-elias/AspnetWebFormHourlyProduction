<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrderDetailUsrCtrl.ascx.cs" Inherits="IndividualUserAccount.UserControl.OrderDetailUsrCtrl" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: left;
    }
    .auto-style3 {
        width: 411px;
    }
</style>


<table class="auto-style1">
    <tr>
        <td colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Asian Order Details Information</strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="2" rowspan="8">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                    <asp:BoundField DataField="BuyerId" HeaderText="BuyerId" SortExpression="BuyerId" />
                    <asp:BoundField DataField="PoNo" HeaderText="PoNo" SortExpression="PoNo" />
                    <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
                    <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [OrderInfo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblBuyer" runat="server" Text="BuyerInfo"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlBuyer" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BuyerName" DataValueField="BuyerId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BuyerInfo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblPO" runat="server" Text="PO"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPO" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblStyle" runat="server" Text="Style"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtStyle" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblItem" runat="server" Text="Item"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtItem" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblColor" runat="server" Text="Color"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtColor" runat="server" Width="200px"></asp:TextBox>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel Operation" />
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
<p class="auto-style2">
    &nbsp;</p>


