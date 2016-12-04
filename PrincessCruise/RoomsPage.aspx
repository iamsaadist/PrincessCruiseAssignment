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
<td style="width: 248px">Room Category </td>
<td style="width: 248px">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName" Height="29px" Width="200px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [CategoryName] FROM [Rooms]"></asp:SqlDataSource>
    </td>
<td style="width: 248px">Room Type </td>
<td style="width: 248px">
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="RoomName" DataValueField="RoomName" Height="31px" Width="199px">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="382px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1053px">
        <Columns>
            <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="RoomDescription" HeaderText="RoomDescription" SortExpression="RoomDescription" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="RoomPrice" HeaderText="RoomPrice (RM)" SortExpression="RoomPrice" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Height="259px" Width="430px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:ImageField DataImageUrlFormatString="~/{0}" DataImageUrlField="ImagePath" ControlStyle-Height="500" ControlStyle-Width="400" >
                        <ControlStyle Height="500px" Width="400px" />
                    </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [ImagePath] FROM [Rooms] WHERE ([RoomName] = @RoomName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="RoomName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [RoomName], [RoomDescription], [RoomPrice], [ImagePath] FROM [Rooms] WHERE (([CategoryName] = @CategoryName) AND ([RoomName] = @RoomName))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="RoomName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
