using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Shikhai.Helpers;


namespace Shikhai.Models
{
    public class FilesViewModel
    {
        public ViewDataUploadFilesResult[] Files { get; set; }
    }
}