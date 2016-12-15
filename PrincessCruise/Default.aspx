<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDACAssignment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>The best in North Europe and America - Princess&#39;s Cruise EU/US</h1>
        <div>
            <asp:Image ID="Image1" runat="server" Height="336px" ImageUrl="~/Assets/princess-cruises-canada-and-new-england-cruise-destination-banner.jpg" Width="1165px" />
        </div>
        <p class="lead">Princess Cruises and its British-based counterpart, the Cunard Line, are two of the largest cruise operators in the world, carrying over 1.5 million passengers per year on almost 20 luxury ships. Princess Cruises offers more than 115 cruise itineraries that sail to all seven continents and call at 350 ports located around the globe, while Cunard focuses on travel in the Atlantic Ocean and Mediterranean Sea. Both are owned by Carnival Corporation and are headquartered in Valencia, California </p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Who are we?</h2>
            <p>
                Your host - Saad Naseem is the resident DJ of the FloaTaTionShip, VP of the APU DJ Club proudly presents the dream child that has been long coming. 

            </p>
            <p>
                <a class="btn btn-default" href="http://www.facebook.com/iamsaadist">Find Us&raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Work with us!</h2>
            <p>
                Excited by the looks of FloaTaTionShip, you can be a part of the awesome crew behind the floating vacation, get in touch with us! We're always recruiting!
            </p>
            <p>
                <a class="btn btn-default" href="http://www.linkedin.com/in/iamsaadist">Contact Us &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>The Itenerary </h2>
            <p>
               Every year, we visit a new destination. What do we have in store for you this year? Check it out!
            </p>
            <p>
                <a class="btn btn-default" href="Itenary.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
