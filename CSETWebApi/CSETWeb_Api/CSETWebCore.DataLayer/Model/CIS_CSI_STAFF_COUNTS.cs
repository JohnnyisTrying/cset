﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class CIS_CSI_STAFF_COUNTS
    {
        public CIS_CSI_STAFF_COUNTS()
        {
            CIS_CSI_ORGANIZATION_DEMOGRAPHICSCybersecurity_IT_ICS_Staff_CountNavigation = new HashSet<CIS_CSI_ORGANIZATION_DEMOGRAPHICS>();
            CIS_CSI_ORGANIZATION_DEMOGRAPHICSIT_ICS_Staff_CountNavigation = new HashSet<CIS_CSI_ORGANIZATION_DEMOGRAPHICS>();
            CIS_CSI_SERVICE_DEMOGRAPHICSCybersecurity_IT_ICS_Staff_CountNavigation = new HashSet<CIS_CSI_SERVICE_DEMOGRAPHICS>();
            CIS_CSI_SERVICE_DEMOGRAPHICSIT_ICS_Staff_CountNavigation = new HashSet<CIS_CSI_SERVICE_DEMOGRAPHICS>();
        }

        [Key]
        [StringLength(50)]
        public string Staff_Count { get; set; }
        public int Sequence { get; set; }

        [InverseProperty("Cybersecurity_IT_ICS_Staff_CountNavigation")]
        public virtual ICollection<CIS_CSI_ORGANIZATION_DEMOGRAPHICS> CIS_CSI_ORGANIZATION_DEMOGRAPHICSCybersecurity_IT_ICS_Staff_CountNavigation { get; set; }
        [InverseProperty("IT_ICS_Staff_CountNavigation")]
        public virtual ICollection<CIS_CSI_ORGANIZATION_DEMOGRAPHICS> CIS_CSI_ORGANIZATION_DEMOGRAPHICSIT_ICS_Staff_CountNavigation { get; set; }
        [InverseProperty("Cybersecurity_IT_ICS_Staff_CountNavigation")]
        public virtual ICollection<CIS_CSI_SERVICE_DEMOGRAPHICS> CIS_CSI_SERVICE_DEMOGRAPHICSCybersecurity_IT_ICS_Staff_CountNavigation { get; set; }
        [InverseProperty("IT_ICS_Staff_CountNavigation")]
        public virtual ICollection<CIS_CSI_SERVICE_DEMOGRAPHICS> CIS_CSI_SERVICE_DEMOGRAPHICSIT_ICS_Staff_CountNavigation { get; set; }
    }
}