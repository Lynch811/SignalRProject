﻿using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using SignalRWebUI.Dtos.CategoryDtos;
using SignalRWebUI.Dtos.ProductDtos;

namespace SignalRWebUI.ViewComponents.DefaultComponents
{
    public class _DefaultOurMenuComponentPartial:ViewComponent
    {
        private readonly IHttpClientFactory _httpClientFactory;

        public _DefaultOurMenuComponentPartial(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("https://localhost:44308/api/Product/GetLast9Products");
            var responseMessage2 = await client.GetAsync("https://localhost:44308/api/Category");
			var responseMessage3 = await client.GetAsync("https://localhost:44308/api/Product/ProductListWithCategory");

			if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var jsonData2 = await responseMessage2.Content.ReadAsStringAsync();
				var jsonData3 = await responseMessage3.Content.ReadAsStringAsync();
				var values = JsonConvert.DeserializeObject<List<ResultProductDto>>(jsonData);
                var values2 = JsonConvert.DeserializeObject<List<ResultCategoryDto>>(jsonData2);
				var values3 = JsonConvert.DeserializeObject<List<ResultProductDto>>(jsonData3);
				var top9Products = values.Take(9).ToList();
				ViewData["Category"]=values2.ToList();
                return View(values3);
            }
            return View();
        }
    }
}
