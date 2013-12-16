using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

using ServiceAuth;


public partial class ASPlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {
        
        string username = Login1.UserName;
        string password = Login1.Password;
        
        ServiceAuth.ServiceSoapClient sv = new ServiceSoapClient();
        
        
        if (sv.CheckTheLogIn(username,password))
        {
            Session["UserName"] = Login1.UserName;
            Session["Password"] = Login1.Password;
            e.Authenticated = true;
            Login1.DestinationPageUrl = "FlexBox.aspx";
            // Response.Redirect("FlexBox.aspx");
            Session["role"] = "student";
        }

    }
 
}




