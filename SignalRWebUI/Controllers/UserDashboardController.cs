using Microsoft.AspNetCore.Mvc;

namespace SignalRWebUI.Controllers
{
	public class UserDashboardController : Controller
	{
		public IActionResult Index()
		{
			return View();
		}
	}
}
