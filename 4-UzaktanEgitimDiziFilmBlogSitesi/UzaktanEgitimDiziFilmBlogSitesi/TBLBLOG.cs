//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBLBLOG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBLBLOG()
        {
            this.TBLYORUMLAR = new HashSet<TBLYORUMLAR>();
        }
    
        public int BLOGID { get; set; }
        public string BLOGBASLIK { get; set; }
        public string BLOGICERIK { get; set; }
        public Nullable<System.DateTime> BLOGTARIH { get; set; }
        public string BLOGGORSEL { get; set; }
        public Nullable<int> BLOGKATEGORI { get; set; }
    
        public virtual TBLKATEGORILER TBLKATEGORILER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBLYORUMLAR> TBLYORUMLAR { get; set; }
    }
}