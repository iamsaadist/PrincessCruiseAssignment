using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PrincessCruise.Startup))]
namespace PrincessCruise
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
