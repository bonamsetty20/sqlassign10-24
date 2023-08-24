using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Assignment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DdlCategory.Items.Add("Beauty");
                DdlCategory.Items.Add("Health and care");
                DdlCategory.Items.Add("Electronics");
                DdlCategory.Items.Add("Personal care");
                DdlCategory.Items.Add("Household");
                DdlCategory.Items.Add("Clothing");
            }
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblInfo.Text = "<br> Product Name: " + TxtName.Text;
            LblInfo.Text += "<br> Product Category: " + DdlCategory.Text;
            LblInfo.Text += "<br> Price: " + TxtPrice.Text;
            LblInfo.Text += "<br> Description: " + TxtDes.Text;
            LblInfo.Text += "<br> Release Date " + CalDate.SelectedDate;

        }
    }
}