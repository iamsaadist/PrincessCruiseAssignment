<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="PrincessCruise.ViewBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">.

    <table>
<tbody>
<tr>
<td style="height: 49px; width: 291px;">
    <asp:Label ID="Label1" runat="server" Text="Enter Booking Number -"></asp:Label>
    </td>
<td style="height: 49px; width: 236px">&nbsp;</td>
<td style="height: 49px; width: 183px">
    &nbsp;</td>
<td style="height: 49px"></td>
</tr>
<tr>
<td style="width: 291px">
    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="209px"></asp:TextBox>
    </td>
<td style="width: 236px">
    <asp:Button ID="Button1" runat="server" Height="32px" Text="Search" Width="195px" />
    </td>
<td style="width: 183px">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td style="width: 291px">&nbsp;</td>
<td style="width: 236px">&nbsp;</td>
<td style="width: 183px">
    &nbsp;</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
    <table>
<tbody>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="BookingUser" HeaderText="BookingUser" SortExpression="BookingUser" />
            <asp:BoundField DataField="BookedPOL" HeaderText="BookedPOL" SortExpression="BookedPOL" />
            <asp:BoundField DataField="BookedPOD" HeaderText="BookedPOD" SortExpression="BookedPOD" />
            <asp:BoundField DataField="BookedETD" HeaderText="BookedETD" SortExpression="BookedETD" />
            <asp:BoundField DataField="BookedETA" HeaderText="BookedETA" SortExpression="BookedETA" />
            <asp:BoundField DataField="SelectedRoom" HeaderText="SelectedRoom" SortExpression="SelectedRoom" />
            <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
            <asp:BoundField DataField="BookingID" HeaderText="BookingID" SortExpression="BookingID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [BookingUser], [BookedPOL], [BookedPOD], [BookedETD], [BookedETA], [SelectedRoom], [TotalCost], [BookingID] FROM [Bookings] WHERE ([BookingID] = @BookingID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="BookingID" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
</tbody>
</table>
</asp:Content>
