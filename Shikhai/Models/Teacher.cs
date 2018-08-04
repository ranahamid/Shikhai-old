﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shikhai.DAL;

namespace Shikhai.Models
{
    public class Teacher: RegisterViewModel
    {
        public  int Id { get; set; }

        [Required]
        [Display(Name = "Full Name")]
        public string FullName { get; set; }

        [Display(Name = "Registration No")]
        public int? RegistrationNo { get; set; }

        [Display(Name = "Registration Type")]
        public string RegistrationType { get; set; }

        [Display(Name = "Institution Name")]
        public string ClinicHospitalName { get; set; }

       
        public string Designation { get; set; }

        [Display(Name = "Year Of Experience")]
        public decimal? YearOfExperience { get; set; }
        
        public List<SelectListItem> AllWorkingSelectListItems { get; set; }

        [Display(Name = "Working Area")]
        public string SelectedTeacherWorkingTypeId { get; set; }


        [Display(Name = "Working Area")]
        public string WorkingTypeName { get; set; }


        public string Addresss { get; set; }

        [Display(Name = "Date Of Birth")]
        public DateTime? DateOfBirth { get; set; }


        // teach days
        [Display(Name = "Can Teach Days")]
        public List<SelectListItem> CanVisitDays { get; set; }

        [Required]
        [Display(Name = "Teach Days")]
        public List<string> SelectedVisitDays { get; set; }

        public string SelectedVisitDaysStr { get; set; }

        public string HiddenDays { get; set; }


        [Required]
        [Display(Name = "Teach Time Start")]
        public TimeSpan VisitTimeStart { get; set; }

        [Required]
        [Display(Name = "Teach Time End")]
        public TimeSpan VisitTimeEnd { get; set; }

        //only for API
        public string VisitTime { get; set; }

        [Display(Name = "Slot Duration (in minutes)")]
        public int SlotDuration { get; set; }

        [Display(Name = "Teach Fee")]
        public int? VisitFee { get; set; }

        [Display(Name = "Profile Image")]
        public string VisitingCard { get; set; }

        public string RawDBImagePath { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        public bool? Active { get; set; }

    }

}