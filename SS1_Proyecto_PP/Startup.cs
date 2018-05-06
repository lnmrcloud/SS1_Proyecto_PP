using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SS1_Proyecto_PP.Startup))]
namespace SS1_Proyecto_PP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
