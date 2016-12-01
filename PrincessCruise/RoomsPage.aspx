<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomsPage.aspx.cs" Inherits="PrincessCruise.RoomsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Names="DINPro-Regular" Font-Overline="True" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" Text="Available Room Types"></asp:Label>
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:DropDownList ID="CategoryList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="CategoryName" DataValueField="CategoryName" Height="16px" Width="164px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DDACAssignmentConnectionString %>" SelectCommand="SELECT [RoomName], [RoomDescription], [RoomPrice], [ImagePath] FROM [Rooms] WHERE ([CategoryName] = @CategoryName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="CategoryList" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="413px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                    <asp:BoundField DataField="RoomDescription" HeaderText="RoomDescription" SortExpression="RoomDescription" />
                    <asp:BoundField DataField="RoomPrice" HeaderText="RoomPrice" SortExpression="RoomPrice" />
                    <asp:ImageField DataImageUrlFormatString="~/{0}" DataImageUrlField="ImagePath" ControlStyle-Height="500" ControlStyle-Width="400" >
                        <ControlStyle Height="500px" Width="400px" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
<br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACAssignmentConnectionString %>" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
</asp:Content>
