using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalR.DtoLayer.TableDto
{
    public class ResultTableDto
    {
        public int TableId { get; set; }
        public string TableName { get; set; }

        // Sadece QR kod URL'sini saklayacak olan özellik
        public string QrCodeUrl { get; set; }
    }
}
