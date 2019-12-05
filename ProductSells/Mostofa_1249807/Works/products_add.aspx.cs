using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mostofa_1249807.Works
{
    public partial class products_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            if (!picture.HasFile || picture.PostedFile.ContentLength <= 0)
            {
                this.msg.InnerHtml = "Select at least one picture for the pet.";
                this.alert.Attributes.Add("class", "alert alert-warning");
                this.alert.Visible = true;
                return;
            }
            if (picture.HasFile)
            {
                if (picture.PostedFile.ContentLength > 0)
                {
                    picture.PostedFile.SaveAs(Server.MapPath("~/Images/") + picture.FileName);
                }
            }
            dsProducts.InsertParameters["catagorie_id"].DefaultValue = ddlProductsCategorie.SelectedValue;
            dsProducts.InsertParameters["product_name"].DefaultValue = Pname.Text;
            dsProducts.InsertParameters["stock"].DefaultValue = pstock.Text;
            dsProducts.InsertParameters["price"].DefaultValue = pprice.Text;
            dsProducts.InsertParameters["picture"].DefaultValue = picture.FileName;
            if (dsProducts.Insert() > 0)
            {
                ddlProductsCategorie.SelectedValue= "Select One";
                Pname.Text = "";
                pstock.Text = "";
                pprice.Text = "";
                this.msg.InnerHtml = "Data Inserted.";
                this.alert.Attributes.Add("class", "alert alert-success");
                this.alert.Visible = true;
            }
            else
            {
                this.msg.InnerHtml = "Operation failed.";
                this.alert.Attributes.Add("class", "alert alert-warning");
                this.alert.Visible = true;
            }
        }
    }
}