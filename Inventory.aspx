﻿<%@ Page Title="Inventory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="UzimaRX.Inventory" EnableEventValidation="false"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Current Inventory</h2>

    <p>
        Search by Drug Name: <asp:TextBox ID="InventorySearch" runat="server"></asp:TextBox>
        <asp:Button ID="InventorySearchBtn" CssClass="btn btn-default" runat="server" Text="Search" OnClick="InventorySearchBtn_Click"/>
         <asp:Button ID="btnAll" runat="server" CssClass="btn btn-default" Text="Show All" OnClick="show_all_click" />
         <asp:Button ID="btnClear" runat="server" CssClass="btn btn-default" Text="Clear Search" OnClick="btn_clear_click" />
        <asp:Button ID="btnAddInventory" runat="server" CssClass="btn btn-default" Text="Add Inventory" OnClick="btnAddInventory_Click" />
        <asp:GridView ID="InventoryGridview" runat="server" AllowPaging="True" AllowSorting="False" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" ForeColor="Black" OnPageIndexChanging="InventoryGridview_PageIndexChanging" PageSize="15" Width="95%" NavigateUrl="Dispense.aspx?Id={0}&Name={1}&ExpirationDate={2}">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Inventory ID" Visible="false">
                    <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            <ItemStyle CssClass="center" />
            </asp:BoundField>
                <asp:BoundField DataField="DrugName" HeaderText="Drug Name" SortExpression="DrugName">
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
                <asp:HyperLinkField Text="Dispense" ItemStyle-CssClass="center" DataNavigateURLFields="Id" DataNavigateUrlFormatString="~\Dispense.aspx?Id={0}" target="_blank" />

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left"  CssClass="pages"/>
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:Button ID="DownloadInventory" CssClass="btn btn-default" runat="server" Text="Download Current Table" OnClick="DownloadInventory_Click" />
    </p>

    </asp:Content>
