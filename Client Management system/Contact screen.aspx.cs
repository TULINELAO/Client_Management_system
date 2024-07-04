using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client_Management_system
{
    public partial class Contact_screen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateContact(object sender, EventArgs e)
        {
         
            Response.Redirect("Contact redirect.aspx");
        }

      
        public class MyData
        {
            public string Name { get; set; }
            
            public string ClientCode { get; set; }
            public int LinkedContacts { get; set; }



          //  protected void CreateContact(object sender, EventArgs e)  
         //   {
            //    Response.Redirect("~/Site/Client form redirect.aspx");
           // }

        }
    }
}