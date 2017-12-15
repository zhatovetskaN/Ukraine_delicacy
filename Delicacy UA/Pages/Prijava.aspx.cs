using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Delicacy_UA
{
    public partial class Prijava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.ConnectionStrings
                ["Ukrainian_delicacyConnectionString"].ConnectionString;

            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            var user = manager.Find(txtUserName.Text, txtPassword.Text);

            if(user !=null)
            {
                //Call OWIN
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //Singin user
                authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties
                {
                    IsPersistent = false
                }, userIdentity);

                //Redirect user to homepage
                Response.Redirect("~/Pages/Default.aspx");
            }
            else
            {
                LitStatus.Text = "Nevažeča lozinka ili korisnićko ime";
            }
        }
    }
}