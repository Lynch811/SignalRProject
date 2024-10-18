using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SignalR.BusinessLayer.Abstract;
using SignalR.DtoLayer.RestaurantTableDto;
using SignalR.EntityLayer.Entities;

namespace SignalRApi.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class RestaurantTablesController : ControllerBase
	{
		private readonly IRestaurantTableService _restaurantTableService;
		private readonly IMapper _mapper;

		public RestaurantTablesController(IRestaurantTableService restaurantTableService, IMapper mapper)
		{
			_restaurantTableService = restaurantTableService;
			_mapper = mapper;
		}
		[HttpGet("RestaurantTableCount")]
		public IActionResult RestaurantTableCount()
		{
			return Ok(_restaurantTableService.TRestaurantTableCount());
		}
		[HttpGet]
		public IActionResult RestaurantTableList()
		{
			var values = _restaurantTableService.TGetListAll();
			return Ok(_mapper.Map<List<ResultRestaurantTableDto>>(values));
		}
		[HttpPost]
		public IActionResult CreateRestaurantTable(CreateRestaurantTableDto createRestaurantTableDto)
		{
			createRestaurantTableDto.Status =false;
			var value=_mapper.Map<RestaurantTable>(createRestaurantTableDto);
			_restaurantTableService.TAdd(value);
			return Ok("Masa başarılı bir şekilde eklendi");
		}
		[HttpDelete("{id}")]
		public IActionResult DeleteRestaurantTable(int id)
		{
			var value = _restaurantTableService.TGetByID(id);
			_restaurantTableService.TDelete(value);
			return Ok("Masa silindi");
		}
		[HttpPut]
		public IActionResult UpdateRestaurantTable(UpdateRestaurantTableDto updateRestaurantTableDto)
		{
			updateRestaurantTableDto.Status = false;
			var value = _mapper.Map<RestaurantTable>(updateRestaurantTableDto);
			_restaurantTableService.TUpdate(value);
			return Ok("Masa bilgisi güncellendi");
		}
		[HttpGet("{id}")]
		public IActionResult GetRestaurantTable(int id)
		{
			var value = _restaurantTableService.TGetByID(id);
			return Ok(_mapper.Map<GetRestaurantTableDto>(value));

		}
	}
}
