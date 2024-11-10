using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SignalR.BusinessLayer.Abstract;

namespace SignalRApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TableController : ControllerBase
    {
        private readonly ITableService _tableService;

        public TableController(ITableService tableService)
        {
            _tableService = tableService;
        }

        [HttpGet("{tableId}/order")]
        public IActionResult GetOrderForTable(int tableId)
        {
            var tableDto = _tableService.GetTableById(tableId);
            if (tableDto == null)
            {
                return NotFound("Table not found");
            }

            return Ok(tableDto);
        }
        [HttpPost("{tableId}/generate-qrcode")]
        public IActionResult GenerateQrCode(int tableId)
        {
            var qrCodePath = _tableService.CreateQrCodeForTable(tableId);
            if (qrCodePath == null)
            {
                return NotFound("Tablo bulunamadı veya QR kodu oluşturulamadı.");
            }

            return Ok(new { QrCodePath = qrCodePath });
        }
    }
}
