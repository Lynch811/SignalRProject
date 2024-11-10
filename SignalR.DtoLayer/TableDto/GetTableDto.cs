using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalR.DtoLayer.TableDto
{
    public class GetTableDto
    {
        public int TableId { get; set; }
        public string TableName { get; set; }
        public string QrCodePath { get; set; }
    }
}
