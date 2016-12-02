<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Itenary.aspx.cs" Inherits="PrincessCruise.Itenary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Overline="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#3366CC" Text="Listed below are the scheduled trips"></asp:Label>
    <br />
    <br />
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DropDownList ID="POLDropDown" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="POL" DataValueField="POL">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT DISTINCT [POL] FROM [Trips]"></asp:SqlDataSource>
<br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="POL" HeaderText="POL" SortExpression="POL" />
                    <asp:BoundField DataField="ETD" HeaderText="ETD" SortExpression="ETD" />
                    <asp:BoundField DataField="POD" HeaderText="POD" SortExpression="POD" />
                    <asp:BoundField DataField="ETA" HeaderText="ETA" SortExpression="ETA" />
                    <asp:BoundField DataField="NoOfDays" HeaderText="NoOfDays" SortExpression="NoOfDays" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DDACConnectionString %>" SelectCommand="SELECT [POL], [ETD], [POD], [ETA], [NoOfDays] FROM [Trips] WHERE ([POL] = @POL)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="POL" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
</asp:Content>
