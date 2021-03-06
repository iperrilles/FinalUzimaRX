﻿<%@ Page Title="Request or Trade" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TradeForm.aspx.cs" Inherits="UzimaRX.TradeForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Post a drug to trade or Request a drug you need</h3>

    <br />
         <a class="btn btn-default" href="../trade"> Return to Trade Page &raquo;</a>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TradeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="80%" AutoGenerateInsertButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px" CellPadding="5" CellSpacing="3" ForeColor="Black">
        <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
        <Fields>
            <asp:BoundField DataField="TradeID" HeaderText="TradeID" InsertVisible="False" ReadOnly="True" SortExpression="TradeID" >
            <HeaderStyle CssClass="center" />
            </asp:BoundField>
            <asp:BoundField DataField="TraderName" HeaderText="TraderName" SortExpression="TraderName" >
                 <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="Have" HeaderText="Have" SortExpression="Have" >
                 <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Need" HeaderText="Need" SortExpression="Need" >
                 <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="DrugName" HeaderText="DrugName" SortExpression="DrugName" >
                <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
                <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:BoundField>
            <asp:BoundField DataField="TraderLocation" HeaderText="TraderLocation" SortExpression="TraderLocation" >
                <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactInformation" HeaderText="ContactInformation" SortExpression="ContactInformation" >
                <ControlStyle CssClass="center" />
            <HeaderStyle CssClass="center" />
            </asp:BoundField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <CommandRowStyle CssClass="center" Font-Size="14" ForeColor="MediumBlue"/>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [UzimaTrades]" DeleteCommand="DELETE FROM [UzimaTrades] WHERE [TradeID] = @TradeID" InsertCommand="INSERT INTO [UzimaTrades] ([TraderName], [Have], [Need], [DrugName], [Quantity], [TraderLocation], [ContactInformation]) VALUES (@TraderName, @Have, @Need, @DrugName, @Quantity, @TraderLocation, @ContactInformation)" UpdateCommand="UPDATE [UzimaTrades] SET [TraderName] = @TraderName, [Have] = @Have, [Need] = @Need, [DrugName] = @DrugName, [Quantity] = @Quantity, [TraderLocation] = @TraderLocation, [ContactInformation] = @ContactInformation WHERE [TradeID] = @TradeID">
        <DeleteParameters>
            <asp:Parameter Name="TradeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TraderName" Type="String" />
            <asp:Parameter Name="Have" Type="Boolean" />
            <asp:Parameter Name="Need" Type="Boolean" />
            <asp:Parameter Name="DrugName" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="TraderLocation" Type="String" />
            <asp:Parameter Name="ContactInformation" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TraderName" Type="String" />
            <asp:Parameter Name="Have" Type="Boolean" />
            <asp:Parameter Name="Need" Type="Boolean" />
            <asp:Parameter Name="DrugName" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="TraderLocation" Type="String" />
            <asp:Parameter Name="ContactInformation" Type="String" />
            <asp:Parameter Name="TradeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
