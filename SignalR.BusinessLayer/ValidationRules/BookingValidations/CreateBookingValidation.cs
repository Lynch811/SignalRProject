using FluentValidation;
using SignalR.DtoLayer.BookingDto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalR.BusinessLayer.ValidationRules.BookingValidations
{
	public class CreateBookingValidation:AbstractValidator<CreateBookingDto>
	{
        public CreateBookingValidation()
        {
            RuleFor(x => x.Name).NotEmpty().WithMessage("İsim alanı boş geçilemez");
            RuleFor(x => x.Phone).NotEmpty().WithMessage("Telefon boş geçilemez");
            RuleFor(x => x.Mail).NotEmpty().WithMessage("Mail alanı boş geçilemez");
            RuleFor(x => x.PersonCount).NotEmpty().WithMessage("Kişi alanı boş geçilemez");
            RuleFor(x => x.Date).NotEmpty().WithMessage("Tarih alanı boş geçilemez");

            RuleFor(x => x.Name).MinimumLength(3).WithMessage("Lütfen en az 3 karakterlik veri girişi yapın!").MaximumLength(50).WithMessage("Lütfen en fazla 50 karekterlik veri girişi yapınız!");
            RuleFor(x => x.Description).MaximumLength(500).WithMessage("Lütfen açıklama alanına en fazla 500 karekterlik veri girişi yapınız!");

            RuleFor(x => x.Mail).EmailAddress().WithMessage("Lütfen geçerli bir email adresi giriniz.");
            
        }
    }
}
