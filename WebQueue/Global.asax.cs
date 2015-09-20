using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using QueueLibrary;

namespace QueueWebApp
{
    public class Global : System.Web.HttpApplication
    {
       

        protected void Application_Start(object sender, EventArgs e)
        {
            
            if (Application["queue"] == null)
            {
               
                Application.Remove("queue");
                Application["queue"] = new MyQueue<string>();
            }
        }
    }
}