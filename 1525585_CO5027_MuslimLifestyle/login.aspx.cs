using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace _1525585_CO5027_MuslimLifestyle
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            //create user 
            var user = new IdentityUser() { UserName = txtRegName.Text, Email = txtRegEmail.Text };
            //IdentityResult result = manager.Create (user, txtRegPassword.Text);
            manager.Create(user, txtRegPassword.Text);

            IdentityRole endUserRole = new IdentityRole("endUser");
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "endUser");
            IdentityResult result = manager.Update(user);


            if (result.Succeeded)
            {
                //todo: Either authenticate the user (log them in) or redirect them to the login page
                //to log in for themselves
                litRegisterError.Text = "Successfully Registered! " + result.Errors.FirstOrDefault();
            }
            else
            {
                litRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
            }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginUsername.Text, txtLoginPassword.Text);
            if (user != null)
            {
                //todo: log user in / instruct user to log in
                litLoginError.Text = "Successfully Login";
                LogUserIn(userManager, user);
                Server.Transfer("admin.aspx", true);
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page
        }
    }
    }