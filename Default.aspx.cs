using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        int key = 0;
        BookReviewDbEntities db = new BookReviewDbEntities();
        int success = db.usp_ReviewerLogin(UserTextBox.Text, PasswordTextBox.Text);
        if (success != -1)
        {
            var uKey = (from k in db.Reviewers
                        where k.ReviewerUserName.Equals(UserTextBox.Text)
                        select k.ReviewerKey).FirstOrDefault();

            key = (int)uKey;
            Session["userKey"] = key;
            Response.Redirect("Author.aspx");
        }
        else
        {
            ResultLabel.Text = "Invalid Login";
        }
    }
}