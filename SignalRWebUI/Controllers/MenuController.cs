using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SignalR.EntityLayer.Entities;
using SignalRWebUI.Dtos.BasketDtos;
using SignalRWebUI.Dtos.CategoryDtos;
using SignalRWebUI.Dtos.ProductDtos;
using System.Text;

namespace SignalRWebUI.Controllers
{
    [AllowAnonymous]
    public class MenuController : Controller
    {
        //Hocanın yaptığı ------------------------------------------------
        private readonly IHttpClientFactory _httpClientFactory;

        public MenuController(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }

        public async Task<IActionResult> Index(int id)
        {
			ViewBag.v = id;
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("https://localhost:44308/api/Product/ProductListWithCategory");
			var responseMessage2 = await client.GetAsync("https://localhost:44308/api/Category");
			if (responseMessage.IsSuccessStatusCode)
			{
				var jsonData = await responseMessage.Content.ReadAsStringAsync();
				var jsonData2 = await responseMessage2.Content.ReadAsStringAsync();
				var values = JsonConvert.DeserializeObject<List<ResultProductDto>>(jsonData);
				var values2 = JsonConvert.DeserializeObject<List<ResultCategoryDto>>(jsonData2);
				ViewData["Category"] = values2.ToList();
				return View(values);
			}
			return View();

			//if (responseMessage.IsSuccessStatusCode)
			//{
			//	var jsonData = await responseMessage.Content.ReadAsStringAsync();
			//	
			//	var values = JsonConvert.DeserializeObject<List<ResultProductDto>>(jsonData);
			//	
			//	ViewData["Category"] = values2.ToList();
			//	return View(values);
			//}
			//
		}
		[HttpPost]
		public async Task<IActionResult> AddBasket(int id,int RestaurantTableID)
		{
			if (RestaurantTableID == 0)
			{
				return BadRequest("MenuTableId 0 geliyor");
			}
			CreateBasketDto createBasketDto = new CreateBasketDto()
			{
				ProductID = id,
				RestaurantTableID = RestaurantTableID
			};
            var client = _httpClientFactory.CreateClient();
			var jsonData = JsonConvert.SerializeObject(createBasketDto);
			StringContent stringContent = new StringContent(jsonData, Encoding.UTF8, "application/json");
			var responseMessage = await client.PostAsync("https://localhost:44308/api/Basket", stringContent);
			if (responseMessage.IsSuccessStatusCode)
			{
				return RedirectToAction("Index");
			}
			return Json(createBasketDto);
		}

	}
}
