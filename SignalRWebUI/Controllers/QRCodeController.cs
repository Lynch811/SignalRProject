using Microsoft.AspNetCore.Mvc;
using QRCoder;
using System.Drawing;
using System.Drawing.Imaging;

namespace SignalRWebUI.Controllers
{
	public class QRCodeController : Controller
	{
        //hocanın yaptıkları
        //[HttpGet]
        //public IActionResult Index()
        //{
        //	return View();
        //}
        //[HttpPost]
        //public IActionResult Index(string value)
        //{
        //	using(MemoryStream memoryStream = new MemoryStream())
        //	{
        //		QRCodeGenerator createQRCode = new QRCodeGenerator();
        //		QRCodeGenerator.QRCode squareCode = createQRCode.CreateQrCode(value, QRCodeGenerator.ECCLevel.Q);
        //		using(Bitmap image= squareCode.GetGraphic(10))
        //		{
        //			image.Save(memoryStream,ImageFormat.Png);
        //			ViewBag.QRCodeImage="data:image/png;base64,"+Convert.ToBase64String(memoryStream.ToArray());
        //		}
        //	}
        //	return View();
        //}
        //chat gpt---------------------
        public IActionResult Index(int? tableId)
        {
            if (tableId == null)
            {
                return BadRequest("Masa ID'si belirtilmedi.");
            }

            // Masa ID’sini View'a iletme veya işlemlerde kullanma
            ViewBag.TableId = tableId;
            return View();
        }

    }
}
