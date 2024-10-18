using AutoMapper;
using SignalR.DtoLayer.RestaurantTableDto;
using SignalR.EntityLayer.Entities;

namespace SignalRApi.Mapping
{
    public class RestaurantTableMapping:Profile
    {
        public RestaurantTableMapping()
        {
            CreateMap<RestaurantTable,ResultRestaurantTableDto>();
            CreateMap<RestaurantTable,GetRestaurantTableDto>();
            CreateMap<RestaurantTable,UpdateRestaurantTableDto>();
            CreateMap<RestaurantTable,CreateRestaurantTableDto>();
        }
    }
}
