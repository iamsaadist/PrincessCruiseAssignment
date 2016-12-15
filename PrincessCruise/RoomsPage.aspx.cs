using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrincessCruise
{
    public partial class RoomsPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = princesscruise.database.windows.net; Initial Catalog = DDAC; Persist Security Info=True;User ID = princesscruise; Password=Killerhands123");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string temp = GridView2.Rows[0].Cells[2].Text;
            SqlCommand cmd = new SqlCommand(" Update Bookings set SelectedRoom ='DropDownList2.SelectedValue',TotalCost ='temp'WHERE BookingID ='TextBox1.Text'", con);
           // cmd.Parameters.AddWithValue("SelectedRoom", DropDownList2.SelectedValue);
          //  cmd.Parameters.AddWithValue("TotalCost", temp);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            System.Windows.Forms.MessageBox.Show("Booking confirmed!");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}