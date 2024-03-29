﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet1
{
    public partial class Pagelifecycle : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        { Response.Write("Page_PreInit" + "<br/>"); }

        protected void Page_Init(object sender, EventArgs e)
        { Response.Write("Page_Init" + "<br/>"); }

        protected void Page_InitComplete(object sender, EventArgs e)
        { Response.Write("Page_InitComplete" + "<br/>"); }

        protected void Page_PreLoad(object sender, EventArgs e)
        { Response.Write("Page_PreLoad" + "<br/>"); }

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Page_Load" + "<br/>");
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        { Response.Write("Page_LoadComplete" + "<br/>"); }

        protected void Page_PreRender(object sender, EventArgs e)
        { Response.Write("Page_PreRender" + "<br/>"); }

        protected void Page_PreRenderComplete(object sender, EventArgs e)
        { Response.Write("Page_PreRenderComplete" + "<br/>"); }


        protected void Page_Unload(object sender, EventArgs e)
        {
           // Response.Write("Page_Unload" + "<br/>"); 
        }

        /*Note: If you uncomment, Response.Write() method call in Page_Unload() event,
         * you get System.Web.HttpException stating - Response is not available in this context. 
         * This makes sense  because, the Unload event is raised after the page
         * has been fully rendered, and the HTML is already sent to the client. 
         * At this stage, the webform instance is ready to be discarded.
         * So, at this point, page properties such as Response and Request are 
         * unloaded and clean up is performed. */

    }
}