using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalR.EntityLayer.Entities
{
    public class Table
    {
        public int TableId { get; set; }
        public string TableName { get; set; }
        public string QrCodePath { get; set; }
    }
}
