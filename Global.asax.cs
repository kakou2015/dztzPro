using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace dztzPro
{
    public class Global : HttpApplication
    {
        public static User CurrentUser { get; set; }
        public static int CurrentSelectedLedger { get; set; }
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            CurrentUser = null;
            CurrentSelectedLedger = 0;
        }
    }
}