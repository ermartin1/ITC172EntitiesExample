using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonationList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    if (Session["userkey"] != null)
    { int key = (int) Session["userkey"];
     var donations = (from d in db.Donations
                    where d.personkey == key
                    select d).ToList();
        GridView1.DataSource = donations;
        GridView1.DataBind();
   }
else
{
     Response.Redirect("Default.aspx")
}
