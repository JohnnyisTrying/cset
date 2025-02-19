﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    /// <summary>
    /// A collection of GEN_FILE_LIB_PATH_CORL records
    /// </summary>
    public partial class GEN_FILE_LIB_PATH_CORL
    {
        /// <summary>
        /// The Gen File Id is used to
        /// </summary>
        [Key]
        public int Gen_File_Id { get; set; }
        /// <summary>
        /// The Lib Path Id is used to
        /// </summary>
        [Key]
        [Column(TypeName = "numeric(38, 0)")]
        public decimal Lib_Path_Id { get; set; }

        [ForeignKey("Gen_File_Id")]
        [InverseProperty("GEN_FILE_LIB_PATH_CORL")]
        public virtual GEN_FILE Gen_File { get; set; }
        [ForeignKey("Lib_Path_Id")]
        [InverseProperty("GEN_FILE_LIB_PATH_CORL")]
        public virtual REF_LIBRARY_PATH Lib_Path { get; set; }
    }
}