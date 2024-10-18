using Microsoft.AspNetCore.Mvc;

namespace SignalRWebUI.ViewComponents.UserLayoutComponents
{
    public class _UserLayoutSidebarComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
