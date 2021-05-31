using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IndividualUserAccount.Startup))]
namespace IndividualUserAccount
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
