using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet1
{
    public partial class Servercontrols : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                City.Items.Add("Chennai");
                City.Items.Add("Mumbai");
                City.Items.Add("Pune");
                City.Items.Add("Delhi");

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (TextBox1.Text == "Archana" && TextBox2.Text == "123")
            {
                Response.Write("welcome" + TextBox1.Text);
               
               // Response.Redirect("WebForm1.aspx");
            }
            //if (MaleRadioButton.Checked)
            // {
            //     Response.Write("radiobutton" + MaleRadioButton.Text);
            // }
            // else
            // {
            //     Response.Write("radiobutton" + FemaleRadioButton.Text);
            // }

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("Male Radio button selected" + "</br>");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("Female Radio button selected");
        }


    }
}
