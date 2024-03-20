using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LaBoulangerie.Startup))]
namespace LaBoulangerie
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
