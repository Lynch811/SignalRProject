using AutoMapper;
using SignalR.DtoLayer.NotificationDto;
using SignalR.EntityLayer.Entities;

namespace SignalRApi.Mapping
{
    public class NotificationsMapping:Profile
    {
        public NotificationsMapping()
        {
            CreateMap<CreateNotificationDto,Notification>().ReverseMap();
            CreateMap<ResultNotificationDto,Notification>().ReverseMap();
            CreateMap<GetByIdNotificationDto,Notification>().ReverseMap();
            CreateMap<UpdateNotificationDto,Notification>().ReverseMap();
        }
    }
}
