using SignalR.BusinessLayer.Abstract;
using SignalR.DataAccessLayer.Abstract;
using SignalR.EntityLayer.Entities;
using SignalR.DtoLayer.TableDto;
using QRCoder;
using System.IO;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;

namespace SignalR.BusinessLayer.Concrete
{
    public class TableManager : ITableService
    {
        private readonly ITableDal _tableDal;

        public TableManager(ITableDal tableDal)
        {
            _tableDal = tableDal;
        }

        // QR kod URL'sini oluşturma
        public string GenerateQrCodeUrl(int tableId)
        {
            return $"https://localhost:44308/api/Table/{tableId}/order"; // URL'yi döndür
        }

        // QR kodunu oluşturma ve veritabanına kaydetme
        public string CreateQrCodeForTable(int tableId)
        {
            var table = _tableDal.GetByID(tableId); // Tabloyu al
            if (table == null) return null;

            string baseUrl = GenerateQrCodeUrl(tableId); // URL'yi al
            string qrCodePath = GenerateQrCode(baseUrl); // QR kodunu oluştur

            // QR kod yolunu veritabanına kaydet
            table.QrCodePath = qrCodePath;
            _tableDal.Update(table); // Veritabanını güncelle

            return qrCodePath; // QR kod yolunu döndür
        }

        private string GenerateQrCode(string url)
        {
            string directoryPath = Path.Combine(Environment.CurrentDirectory, "qrcodes");

            // Dizini kontrol et ve yoksa oluştur
            if (!Directory.Exists(directoryPath))
            {
                Directory.CreateDirectory(directoryPath);
            }

            using (QRCodeGenerator qrGenerator = new QRCodeGenerator())
            {
                QRCodeData qrCodeData = qrGenerator.CreateQrCode(url, QRCodeGenerator.ECCLevel.Q);
                using (QRCode qrCode = new QRCode(qrCodeData))
                {
                    using (Bitmap qrCodeImage = qrCode.GetGraphic(20))
                    {
                        // QR kodunu bir dosya olarak kaydet
                        string qrCodePath = Path.Combine(directoryPath, $"qrcode_{Guid.NewGuid()}.png");
                        qrCodeImage.Save(qrCodePath, ImageFormat.Png);
                        return qrCodePath; // QR kod yolunu döndür
                    }
                }
            }
        }

        public ResultTableDto GetTableById(int tableId)
        {
            var table = _tableDal.GetByID(tableId);
            if (table == null) return null;

            return new ResultTableDto
            {
                TableId = table.TableId,
                TableName = table.TableName,
                QrCodeUrl = table.QrCodePath // Bu özellik DTO'da olmalı
            };
        }

        // Diğer ITableService metodları için NotImplementedException'ları kaldırın ve gerekirse uygulanmış olanları ekleyin
        public void TAdd(Table entity)
        {
            _tableDal.Add(entity); // Tablo ekle
        }

        public void TDelete(Table entity)
        {
            _tableDal.Delete(entity); // Tabloyu sil
        }

        public Table TGetByID(int id)
        {
            return _tableDal.GetByID(id); // Tabloyu ID'ye göre getir
        }

        public List<Table> TGetListAll()
        {
            return _tableDal.GetListAll(); // Tüm tabloları getir
        }

        public void TUpdate(Table entity)
        {
            _tableDal.Update(entity); // Tabloyu güncelle
        }
    }
}
