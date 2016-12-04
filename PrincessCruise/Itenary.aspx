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
<br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <asp:Button ID="Button1" runat="server" Font-Names="Verdana" ForeColor="Black" Height="55px" OnClick="Button1_Click" Text="Choose Cruise Room" Width="222px" />
    <br />
    <br />
</asp:Content>
