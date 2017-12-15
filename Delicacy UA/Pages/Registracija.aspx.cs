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
    public partial class Registracija : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.ConnectionStrings
                ["Ukrainian_delicacyConnectionString"].ConnectionString;

            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            //Dodati novog korisnika i pohraniti u DB

            IdentityUser user = new IdentityUser();
            user.UserName = txtUserName.Text;

            if (txtPassword.Text == txtConfirmPass.Text)
            {
                //Create user objekt

                try
                {
                    IdentityResult result = manager.Create(user, txtPassword.Text);

                    if (result.Succeeded)
                    {
                        //Store user in DB
                        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                        //Set to login user by coockie
                        var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                        //Login new user and redirect to homepage
                        authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties(), userIdentity);
                        Response.Redirect("~/Pages/Default.aspx");
                    }
                    else
                    {
                        LIdStatus.Text = result.Errors.FirstOrDefault();
                    }
                }
                catch (Exception ex)
                {
                    LIdStatus.Text = ex.ToString();
                }
            }
            else
            {
                LIdStatus.Text = "Lozinka mora biti ista";
            }

            txtUserName.Text = string.Empty;
}
    }
}