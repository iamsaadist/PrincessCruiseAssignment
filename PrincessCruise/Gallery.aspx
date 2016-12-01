<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="PrincessCruise.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <asp:Timer ID="ImageTimer" runat="server" Interval="2000" OnTick="ImageTimer_Tick">
</asp:Timer>
<asp:Image ID="Image1" Height =" 500px" runat="server" Width="500px" ImageAlign="AbsMiddle" />
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>
