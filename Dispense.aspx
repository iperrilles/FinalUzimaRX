﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dispense.aspx.cs" Inherits="UzimaRX.Dispense" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dispense</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Dispense an Item</h1>
        <div>
            <asp:GridView ID="DispenseGridview" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="95%" >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Inventory ID" Visible="false" >
                        <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                    <asp:BoundField DataField="DrugName" HeaderText="Drug Name" SortExpression="DrugName" >
                        <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
                        <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                    <asp:BoundField DataField="LocationName" HeaderText="Location Name" SortExpression="LocationName" >
                        <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                    <asp:BoundField DataField="DateOrdered" HeaderText="Date Ordered" DataFormatString="{0:dd/MM/yyyy}" SortExpression="DateOrdered" >
                        <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                    <asp:BoundField DataField="ExpirationDate" HeaderText="Expiration Date" DataFormatString="{0:dd/MM/yyyy}" SortExpression="ExpirationDate" >
                        <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>


            <br />
            <%-- Dispense Quantity <asp:TextBox ID="DispenseQuantity" runat="server"></asp:TextBox> --%>
            <asp:Button ID="DispenseBtn" CssClass="btn btn-default" runat="server" Text="Dispense" OnClick="DispenseBtn_Click" />
        </div>
    </form>
</body>
</html>
