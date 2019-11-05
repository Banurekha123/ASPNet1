using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int clickscount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBox1.Text = "0";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //method 1 to show no state management

            //clickscount = clickscount + 1;
            //TextBox1.Text = clickscount.ToString();

            //method 2 to show statemanagement using viewstate variables


            //if (ViewState["clicks"]!=null)
            //{
            //    clickscount = (int)ViewState["clicks"] + 1;
            //}
            //TextBox1.Text = clickscount.ToString();
            //ViewState["clicks"] = clickscount;

            //method 3 to show asp controls maintain viewstate

            clickscount = Convert.ToInt32(TextBox1.Text)+1;
            TextBox1.Text = clickscount.ToString();

        }


    }
}