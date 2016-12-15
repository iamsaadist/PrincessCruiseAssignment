<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Itenary.aspx.cs" Inherits="PrincessCruise.Itenary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Overline="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#3366CC" Text="Listed below are the scheduled trips"></asp:Label>
    <br />
    <br />
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table>
<tbody>
<tr>
<td style="width: 236px; height: 40px">
    <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Departing from :- "></asp:Label>
    </td>
<td style="height: 40px; width: 24px">
    <asp:DropDownList ID="DepartingFrom" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="POL" DataValueField="POL" OnSelectedIndexChanged="DepartingFrom_SelectedIndexChanged" Width="130px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [POL] FROM [Trips]"></asp:SqlDataSource>
    </td>
</tr>
<tr>
<td style="width: 236px; height: 40px"><strong>Traveling to :-</strong></td>
<td style="height: 40px; width: 24px">
    <asp:DropDownList ID="TravelingTO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="POD" DataValueField="POD" Width="130px" OnSelectedIndexChanged="TravelingTO_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [POD] FROM [Trips] WHERE ([POL] = @POL)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DepartingFrom" Name="POL" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
<tr>
<td style="width: 236px; height: 40px"><strong>Date of Departure :-</strong></td>
<td style="height: 40px; width: 24px">&nbsp;</td>
</tr>
<tr>
<td style="width: 236px; height: 40px">&nbsp;</td>
<td style="height: 40px; width: 24px">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="ETD" DataValueField="ETD" Width="301px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [ETD] FROM [Trips] WHERE (([POL] = @POL) AND ([POD] = @POD)) ORDER BY [ETD]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DepartingFrom" Name="POL" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="TravelingTO" Name="POD" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
<tr>
<td style="width: 236px; height: 40px"><strong>Date of Arrival :-</strong></td>
<td style="height: 40px; width: 24px"></td>
</tr>
<tr>
<td style="width: 236px; height: 40px"></td>
<td style="height: 40px; width: 24px">
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="ETA" DataValueField="ETA" Width="301px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [ETA] FROM [Trips] WHERE (([POL] = @POL) AND ([POD] = @POD) AND ([ETD] = @ETD))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DepartingFrom" Name="POL" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="TravelingTO" Name="POD" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="ETD" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
</tbody>
</table>
            <%--&nbsp;--%>
<br />
            <table>
                <tbody>
                    <tr>
                        <td style="width: 150px; height: 62px;">Room Category </td>
                        <td style="width: 248px; height: 62px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="CategoryName" DataValueField="CategoryName" Height="29px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [CategoryName] FROM [Rooms]"></asp:SqlDataSource>
                        </td>
                        <td style="width: 150px; height: 62px;">Room Type </td>
                        <td style="width: 248px; height: 62px;">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="RoomName" DataValueField="RoomName" Height="31px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="199px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [RoomName] FROM [Rooms] WHERE ([CategoryName] = @CategoryName)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </tbody>
            </table>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="843px">
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
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [RoomName], [RoomDescription], [RoomPrice] FROM [Rooms] WHERE (([CategoryName] = @CategoryName) AND ([RoomName] = @RoomName))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="RoomName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
<br />
            <table>
<tbody>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="215px">
        <Columns>
            <asp:ImageField ControlStyle-Height="500" ControlStyle-Width="400" DataImageUrlField="ImagePath" DataImageUrlFormatString="~/{0}">
                <ControlStyle Height="700px" Width="900px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [ImagePath] FROM [Rooms] WHERE ([RoomName] = @RoomName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="RoomName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
</tbody>
</table>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <asp:Button ID="Button1" runat="server" Font-Names="Verdana" ForeColor="Black" Height="55px" OnClick="Button1_Click" Text="BOOK!" Width="222px" />
    <br />
    <br />
</asp:Content>
