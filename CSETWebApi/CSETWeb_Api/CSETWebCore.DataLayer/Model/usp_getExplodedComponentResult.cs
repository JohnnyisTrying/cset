﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace CSETWebCore.DataLayer.Model
{
    public partial class usp_getExplodedComponentResult
    {
        public string UniqueKey { get; set; }
        public int Assessment_Id { get; set; }
        public int? Answer_Id { get; set; }
        public int Question_Id { get; set; }
        public string Answer_Text { get; set; }
        public string Comment { get; set; }
        public string Alternate_Justification { get; set; }
        public string FeedBack { get; set; }
        public int? Question_Number { get; set; }
        public string QuestionText { get; set; }
        public string ComponentName { get; set; }
        public string Symbol_Name { get; set; }
        public string Question_Group_Heading { get; set; }
        public int? GroupHeadingId { get; set; }
        public string Universal_Sub_Category { get; set; }
        public int? SubCategoryId { get; set; }
        public bool Is_Component { get; set; }
        public Guid Component_Guid { get; set; }
        public int? Layer_Id { get; set; }
        public string LayerName { get; set; }
        public int? Container_Id { get; set; }
        public string ZoneName { get; set; }
        public string SAL { get; set; }
        public bool? Mark_For_Review { get; set; }
        public bool? Is_Requirement { get; set; }
        public bool? Is_Framework { get; set; }
        public bool? Reviewed { get; set; }
        public string Simple_Question { get; set; }
        public string Sub_Heading_Question_Description { get; set; }
        public int? heading_pair_id { get; set; }
        public string label { get; set; }
        public int Component_Symbol_Id { get; set; }
    }
}
