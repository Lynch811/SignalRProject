using Microsoft.AspNetCore.Mvc;

namespace SignalRWebUI.ViewComponents.UserLayoutComponents
{
    public class _UserLayoutNavbarComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
