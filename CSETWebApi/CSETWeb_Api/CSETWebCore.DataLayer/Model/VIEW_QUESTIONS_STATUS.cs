﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    [Keyless]
    public partial class VIEW_QUESTIONS_STATUS
    {
        public int Question_Or_Requirement_Id { get; set; }
        public bool? HasComment { get; set; }
        public bool? MarkForReview { get; set; }
        public bool? HasDocument { get; set; }
        public int docnum { get; set; }
        public bool? HasDiscovery { get; set; }
        public int findingnum { get; set; }
        public int Assessment_Id { get; set; }
        public int Answer_Id { get; set; }
    }
}