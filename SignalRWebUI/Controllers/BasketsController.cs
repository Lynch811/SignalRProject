﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using SignalRWebUI.Dtos.BasketDtos;
using System.Text;

namespace SignalRWebUI.Controllers
{
	[AllowAnonymous]
	public class BasketsController : Controller
	{
		private readonly IHttpClientFactory _httpClientFactory;

		public BasketsController(IHttpClientFactory httpClientFactory)
		{
			_httpClientFactory = httpClientFactory;
		}

		public async Task<IActionResult> Index(int tableId)
		{
			//var tableId = HttpContext.Session.GetInt32("TableId");
			if (tableId != null)  // Eğer TableId varsa işlemi yapıyoruz
			{
				var client = _httpClientFactory.CreateClient();
				var responseMessage = await client.GetAsync($"https://localhost:44308/api/Basket/BasketListByRestaurantTableWithProductName?id={tableId}");
				if (responseMessage.IsSuccessStatusCode)
				{
					var jsonData = await responseMessage.Content.ReadAsStringAsync();
					var values = JsonConvert.DeserializeObject<List<ResultBasketDto>>(jsonData);
					return View(values);
				}
			}
			return View();
		}
		public async Task<IActionResult> DeleteBasket(int id)
		{
			var client = _httpClientFactory.CreateClient();
			var responseMessage = await client.DeleteAsync($"https://localhost:44308/api/Basket/{id}");
			if (responseMessage.IsSuccessStatusCode)
			{
				return RedirectToAction("Index");
			}
			return NoContent();
		}
	}
}
