using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Mostofa_1249807.Startup))]
namespace Mostofa_1249807
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
