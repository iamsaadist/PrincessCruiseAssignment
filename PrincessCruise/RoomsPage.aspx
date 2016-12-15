<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomsPage.aspx.cs" Inherits="PrincessCruise.RoomsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Names="DINPro-Regular" Font-Overline="True" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" Text="Available Room Types"></asp:Label>
    <br />
    <strong>Please note rooms will be displayed based on the chosen Destination and Embarkment point.<br />
    <br />
    </strong><br />
    <table>
<tbody>
<tr>
<td style="width: 150px; height: 62px;">Room Category </td>
<td style="width: 248px; height: 62px;">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName" Height="29px" Width="200px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [CategoryName] FROM [Rooms]"></asp:SqlDataSource>
    </td>
<td style="width: 150px; height: 62px;">Room Type </td>
<td style="width: 248px; height: 62px;">
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="RoomName" DataValueField="RoomName" Height="31px" Width="199px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [RoomName] FROM [Rooms] WHERE ([CategoryName] = @CategoryName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
</tbody>
</table>

    <table>
<tbody>
<tr>
<td style="width: 1057px">
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="843px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
            <asp:BoundField DataField="RoomDescription" HeaderText="RoomDescription" SortExpression="RoomDescription" />
            <asp:BoundField DataField="RoomPrice" HeaderText="RoomPrice" SortExpression="RoomPrice" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" BorderColor="#FFCC66" BorderStyle="Double" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [RoomName], [RoomDescription], [RoomPrice] FROM [Rooms] WHERE (([CategoryName] = @CategoryName) AND ([RoomName] = @RoomName))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="RoomName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="215px">
        <Columns>
           <asp:ImageField DataImageUrlFormatString="~/{0}" DataImageUrlField="ImagePath" ControlStyle-Height="500" ControlStyle-Width="400" >
                        <ControlStyle Height="700px" Width="900px" />
                    </asp:ImageField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter your BookingID for confirmation!"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="38px" OnTextChanged="TextBox1_TextChanged" Width="236px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Segoe UI Semibold" Font-Size="Large" ForeColor="#000066" Height="49px" OnClick="Button1_Click" Text="Book!" Width="246px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </td>
</tr>
</tbody>
</table>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [ImagePath] FROM [Rooms] WHERE ([RoomName] = @RoomName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="RoomName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
