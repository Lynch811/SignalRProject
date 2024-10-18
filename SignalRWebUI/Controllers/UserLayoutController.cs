using Microsoft.AspNetCore.Mvc;

namespace SignalRWebUI.Controllers
{
    public class UserLayoutController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
