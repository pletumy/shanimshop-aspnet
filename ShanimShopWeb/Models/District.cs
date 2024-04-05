﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanDienThoai.Models
{
    public class District
    {
        public int Code { get; set; }
        public string Name { get; set; }
        public List<Ward> Wards { get; set; }
    }
}