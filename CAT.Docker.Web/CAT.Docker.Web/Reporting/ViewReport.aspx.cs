using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAT.Docker.Web.Reporting
{
    public partial class ViewReport : System.Web.UI.Page
    {
        private string ScreenHeight
        {
            set { ViewState["availHeight"] = value; }
            get { return ViewState["availHeight"] as string; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ifReport.Attributes.Add("src", "Report.ashx");
            if (this.Page.Request.UserAgent.ToUpper().Contains("MSIE 7"))
                ifReport.Style.Add("height", this.ScreenHeight);
        }
    }
}