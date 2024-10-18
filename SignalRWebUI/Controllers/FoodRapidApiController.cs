using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using SignalRWebUI.Dtos.RapidApiDtos;

namespace SignalRWebUI.Controllers
{
	public class FoodRapidApiController : Controller
	{
		public async Task<IActionResult> Index()
		{
			var client = new HttpClient();
			var request = new HttpRequestMessage
			{
				Method = HttpMethod.Get,
				RequestUri = new Uri("https://tasty.p.rapidapi.com/recipes/list?from=0&size=20&tags=under_30_minutes"),
				Headers =
	{
		{ "x-rapidapi-key", "bf015bc0f3mshf4ea58fc7ef4ee5p12fbb6jsn072dee70f785" },
		{ "x-rapidapi-host", "tasty.p.rapidapi.com" },
	},
			};
			using (var response = await client.SendAsync(request))
			{
				response.EnsureSuccessStatusCode();
				var body = await response.Content.ReadAsStringAsync();
				//var values=JsonConvert.DeserializeObject<List<ResultTastyApi>>(body);
				//return View(values);
				var root=JsonConvert.DeserializeObject<RootTastApi>(body);
				var values = root.Results;
				return View(values.ToList());
			}
			
		}
	}
}
