﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrincessCruise
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SetImageURL();
            }
        }

        protected void ImageTimer_Tick(object sender, EventArgs e)
        {
            SetImageURL();
        }

        private void SetImageURL()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 11);
            Image1.ImageUrl = "~/Assets/" + i.ToString() + ".jpg";
        }
    }
}