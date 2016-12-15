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
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            SqlCommand cmd = new SqlCommand("Insert into Bookings (BookedPOL,BookedPOD,BookedETD,BookedETA,BookingUser,BookingID,TotalCost,SelectedRoom) values (@BookedPOL,@BookedPOD,@BookedETD,@BookedETA,@BookingUser,@BookingID,@TotalCost,@SelectedRoom)", con);
            cmd.Parameters.AddWithValue("BookedPOL", DepartingFrom.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookedPOD", TravelingTO.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookedETD", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookedETA", RadioButtonList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("BookingUser", System.Web.HttpContext.Current.User.Identity.Name.ToString());
            cmd.Parameters.AddWithValue("BookingID", finalString);
            cmd.Parameters.AddWithValue("SelectedRoom", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("TotalCost", GridView2.Rows[0].Cells[2].Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            System.Windows.Forms.MessageBox.Show("Please note your Booking ID for future reference - "+finalString);
             Response.Redirect("~/ViewBooking");
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


        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}