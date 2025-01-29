using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace Lab2Form
{
    public partial class MyWebForm : System.Web.UI.Page
    {
        protected DropDownList ddlState;
        protected DropDownList ddlDistrict;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStates();
            }
        }

        public void LoadStates()
        {
            var states = new Dictionary<string, string>
            {
                { "1", "Koshi" },
                { "2", "Madesh" },
                { "3", "Bagmati" },
                { "4", "Gandaki" },
                { "5", "Lumbini" },
                { "6", "Karnali" },
                { "7", "Sudurpaschim" }
            };

            ddlState.DataSource = states;
            ddlState.DataTextField = "Value";
            ddlState.DataValueField = "Key";
            ddlState.DataBind();
            ddlState.Items.Insert(0, new ListItem("-- Select State --", ""));
        }

        public void LoadDistrict(string stateId)
        {
            var districts = new Dictionary<string, List<string>>
            {
                { "1", new List<string> { "Morang", "Sunsari", "Dhankuta" } },
                { "2", new List<string> { "Dhanusha", "Sarlahi", "Mahottari" } },
                { "3", new List<string> { "Kathmandu", "Lalitpur", "Bhaktapur" } },
                { "4", new List<string> { "Pokhara", "Baglung", "Myagdi" } },
                { "5", new List<string> { "Butwal", "Dang", "Kapilvastu" } },
                { "6", new List<string> { "Jumla", "Dolpa", "Mugu" } },
                { "7", new List<string> { "Dhangadhi", "Kanchanpur", "Bajhang" } }
            };

            ddlDistrict.Items.Clear();
            if (districts.ContainsKey(stateId))
            {
                ddlDistrict.DataSource = districts[stateId];
                ddlDistrict.DataBind();
            }

            ddlDistrict.Items.Insert(0, new ListItem("-- Select District --", ""));
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedState = ddlState.SelectedValue;
            if (!string.IsNullOrEmpty(selectedState))
            {
                LoadDistrict(selectedState);
            }
        }
    }
}