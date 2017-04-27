using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        string last = LastNameTextBox.Text;
        string first = FirstNameTextBox.Text;
        string email = EmailTextBox.Text;
        string password = PasswordTextBox.Text;
        string apt = HouseNumTextBox.Text;
        string street = StreetTextBox.Text;
        string city = CityTextBox.Text;
        string state = StateTextBox.Text;
        string zipcode = ZipCodeTextBox.Text;
        string home = HomePhoneTextBox.Text;
        string work = WorkPhoneTextBox.Text;

        Community_AssistEntities db= new Community_AssistEntities();
        int result = db.usp_Register(last, first, email, password, apt, street, city, state, zipcode, home, work);
        if (result != -1)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            ErrorLabel.Text = "Something went terribly wrong";
        }
    }
}