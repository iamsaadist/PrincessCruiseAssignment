<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="PrincessCruise.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <asp:Timer ID="ImageTimer" runat="server" Interval="2000" OnTick="ImageTimer_Tick">
</asp:Timer>
            <div style="align-self:center">
<asp:Image ID="Image1" Height ="500px" runat="server" Width="1069px" ImageAlign="AbsMiddle" />
                <br />
                <br />
                <h2 class="font-size-p8" data-swiftype-name="keywords" data-swiftype-type="string" style="color: rgb(51, 51, 51); font-size: 1.76923em; font-weight: 400; margin: 0px; box-sizing: border-box; font-family: &quot;Gotham XNarrow SSm 4r&quot;, Arial, Helvetica, sans-serif; letter-spacing: 2px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">WHAT MAKES PRINCESS SPECIAL?</h2>
                <p style="margin: 0.5em 0px 1em; box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Gotham SSm 4r&quot;, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: -0.25px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                    From relaxing pursuits and enriching activities to world-class entertainment and gourmet cuisine, when you step aboard, you are setting a course for a world of wonderful new discoveries.</p>
                <p style="margin: 0.5em 0px 1em; box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Gotham SSm 4r&quot;, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: -0.25px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                    Princess Cruise has always been a part of their customer&#39;s Instagram Timelines! Have a look at what they have to say about our cruises!</p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#6699FF" BorderColor="#0099FF" BorderStyle="Double" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Overline="False" Font-Size="Smaller" Font-Underline="True" ForeColor="#003300" Height="47px" OnClick="Button1_Click" Text="Find us on Instagram!" Width="241px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#6699FF" BorderColor="#0099FF" BorderStyle="Double" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Overline="False" Font-Size="Smaller" Font-Underline="True" ForeColor="#003300" Height="47px" OnClick="Button1_Click" Text="What our Customers Say!" Width="241px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
            </div>
            <h2>&nbsp;</h2>

            <p>
                &nbsp;</p>

        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>
