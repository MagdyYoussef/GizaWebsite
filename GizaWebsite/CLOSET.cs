//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GizaWebsite
{
    using System;
    using System.Collections.Generic;
    
    public partial class CLOSET
    {
        public CLOSET()
        {
            this.CORRESPONDENCE_IN = new HashSet<CORRESPONDENCE_IN>();
        }
    
        public int ID { get; set; }
        public string NAME_EN { get; set; }
        public string NAME_AR { get; set; }
    
        public virtual ICollection<CORRESPONDENCE_IN> CORRESPONDENCE_IN { get; set; }
    }
}
