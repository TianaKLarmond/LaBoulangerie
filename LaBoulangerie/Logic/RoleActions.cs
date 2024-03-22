using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using LaBoulangerie.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace LaBoulangerie.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {
            // Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            // Create a RoleStore object by using the ApplicationDbContext object. 
            // The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);

            // Create a RoleManager object that is only allowed to contain IdentityRole objects.
            // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            // Then, you create the "Administrator" role if it doesn't already exist.
            if (!roleMgr.RoleExists("Administrator"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "Administrator" });
            }

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object. Note that you can create new objects and use them as parameters in
            // a single line of code, rather than using multiple lines of code, as you did
            // for the RoleManager object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "canEditUser@laboulangerie.com",
                Email = "canEditUser@laboulangerie.com"
            };
            IdUserResult = userMgr.Create(appUser, "p@ssw0rd");

            // If the new "Administrator" user was successfully created, 
            // add the "Administrator" user to the "Administrator" role. 
            if (!userMgr.IsInRole(userMgr.FindByEmail("canEditUser@laboulangerie.com").Id, "Administrator"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("canEditUser@laboulangerie.com").Id, "Administrator");
            }

            // Creating Customer role     
            //if (!roleMgr.RoleExists("Customer"))
            //{
            //    var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
            //    role.Name = "Customer";
            //    roleMgr.Create(role);
            //}
        }
    }
}