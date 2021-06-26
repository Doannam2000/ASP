using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BaiTap3.Models
{
    public class Student
    {
        [Display(Name="Mã sinh viên")]
        public int ID { get; set; }
        [Display(Name = "Tên sinh viên")]
        public string Name{ get; set; }
        [Display(Name = "Điện thoại")]
        public string Phone{ get; set; }
        [Display(Name = "Ngày bắt đầu")]
        public DateTime StartDate { get; set; }
        public Student()
        {
            ID = 1234;
            Name = "Đoàn Duy Nam";
            Phone = "012315815";
            StartDate = DateTime.Now;
        }
    }
}