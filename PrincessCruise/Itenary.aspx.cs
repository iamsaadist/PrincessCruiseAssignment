using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PrincessCruise
{
    public partial class Itenary : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = princesscruise.database.windows.net; Initial Catalog = DDAC; Persist Security Info=True;User ID = princesscruise; Password=Killerhands123");
        protected void Page_Load(object sender, EventArgs e)
        {
            //  bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
        }

        protected void DepartingFrom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("Insert into Bookings (BookedPOL,BookedPOD,BookedETD,BookedETA,BookingUser) values (@BookedPOL,@BookedPOD,@BookedETD,@BookedETA,@BookingUser)", con);
            cmd.Parameters.AddWithValue("BookedPOL", DepartingFrom.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookedPOD", TravelingTO.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookedETD", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookedETA", RadioButtonList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookingUser", System.Web.HttpContext.Current.User.Identity.Name.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/RoomsPage");
        }

        protected void TravelingTO_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}