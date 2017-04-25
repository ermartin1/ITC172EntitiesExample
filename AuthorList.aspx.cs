using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AuthorList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookReviewDbEntities db = new BookReviewDbEntities();
        var auths = (from a in db.Authors
                     select a).ToList();
        GridView1.DataSource = auths;
        GridView1.DataBind();
    }
}