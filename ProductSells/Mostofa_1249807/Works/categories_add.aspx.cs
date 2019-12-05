using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mostofa_1249807.Works
{
    public partial class categories_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            
            dsCategorie.InsertParameters["Categorie_Name"].DefaultValue = cname.Text;
            dsCategorie.InsertParameters["categorie_description"].DefaultValue = cdescription.Text;
            if (dsCategorie.Insert() > 0)
            {
                cname.Text = "";
                cdescription.Text = "";
                this.msg.InnerHtml = "Data Inserted.";
                this.alert.Attributes.Add("class", "alert alert-success");
                this.alert.Visible = true;
            }
            else
            {
                this.msg.InnerHtml = "Operation faield.";
                this.alert.Attributes.Add("class", "alert alert-warning");
                this.alert.Visible = true;
            }
        }
    }
}