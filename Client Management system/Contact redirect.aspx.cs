using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client_Management_system
{
    public partial class Contact_redirect : System.Web.UI.Page
    {
        protected Task Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                General.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;

            }

            return Task.CompletedTask;
        }

        protected void General_Click(object sender, EventArgs e)
        {
            General.CssClass = "Clicked";
            Contact.CssClass = "Initial";

            MainView.ActiveViewIndex = 0;
        }

        protected void Contact_Click(object sender, EventArgs e)
        {
            General.CssClass = "Initial";
            Contact.CssClass = "Clicked";

            MainView.ActiveViewIndex = 1;
        }
        protected void MyGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Link")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv1.Rows[rowIndex];
                Button btnCustom = (Button)row.FindControl("btnSave");
                // Perform logic for linking and unlinking contacts to client
                if (btnCustom != null)
                {
                    if (btnCustom.Text == "Link")
                    {
                        btnCustom.Text = "UnLink";


                    }
                    else
                    {
                        btnCustom.Text = "Link";


                    }

                    Debug.WriteLine(btnCustom.Text);

                }
            }

        }
    }
}