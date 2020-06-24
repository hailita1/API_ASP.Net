using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using demo.Model;

namespace demo.Controllers
{
    public class DuLieuController : ApiController
    {
        DuLieuDataContext db = new DuLieuDataContext();
        // GET: api/DuLieu
        public List<tblNhanVien> Get()
        {
            List<tblNhanVien> list = new List<tblNhanVien>();
            list = db.tblNhanViens.ToList();
            List<tblNhanVien> list_nv = new List<tblNhanVien>();
            foreach (var item in list)
            {
                tblNhanVien x = new tblNhanVien()
                {
                    TenNhanVien = item.TenNhanVien,
                    MaNhanVien = item.MaNhanVien,
                    DiaChi = item.DiaChi,
                    DienThoai = item.DienThoai,
                    NgaySinh = item.NgaySinh,
                    GioiTinh = item.GioiTinh,
                    CongViec = item.CongViec

                };
                list_nv.Add(x);
            }
            return list_nv;
        }

        // GET: api/DuLieu/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/DuLieu
        public string Post([FromBody] tblNhanVien model)
        {
            var check = db.tblNhanViens.FirstOrDefault(x => x.MaNhanVien == model.MaNhanVien);
            if (check == null)
            {
                tblNhanVien nhanVien = new tblNhanVien()
                {
                    TenNhanVien = model.TenNhanVien,
                    MaNhanVien = model.MaNhanVien,
                    DiaChi = model.DiaChi,
                    DienThoai = model.DienThoai,
                    NgaySinh = model.NgaySinh,
                    GioiTinh = model.GioiTinh,
                    CongViec = model.CongViec
                };
                db.tblNhanViens.InsertOnSubmit(nhanVien);
                db.SubmitChanges();
                return "Added sucess";
            }
            else
            {
                return "Employee not added";
            }
        }

        // PUT: api/DuLieu/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/DuLieu/5
        public void Delete(int id)
        {
        }
    }
}
