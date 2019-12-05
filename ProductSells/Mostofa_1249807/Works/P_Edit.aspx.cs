using Mostofa_1249807.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mostofa_1249807.Works
{
    public partial class P_Edit : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PDbContext db = new PDbContext();
                ddlProductsCategorie.DataSource = db.categories.ToList();
                ddlProductsCategorie.DataBind();
                var data = db.products.AsEnumerable().First(x => x.product_id == int.Parse(Request.QueryString["id"]));
                HiddenField1.Value = Request.QueryString["id"];
                ddlProductsCategorie.SelectedValue = data.catagorie_id.ToString();
                Pname.Text = data.product_name;
                pstock.Text = data.stock.ToString();
                pprice.Text = data.price.ToString();

            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            PDbContext db = new PDbContext();
  
            var data = db.products.AsEnumerable().First(x => x.product_id == int.Parse(HiddenField1.Value));
            if (picture.HasFile)
            {
                if (picture.PostedFile.ContentLength > 0)
                {
                    picture.PostedFile.SaveAs(Server.MapPath("~/Images/") + picture.FileName);
                    data.picture = picture.FileName;
                }
            }
            data.catagorie_id = int.Parse(ddlProductsCategorie.SelectedValue.ToString());
            data.product_name= Pname.Text;
            data.stock= pstock.Text.ToString();
            data.price=decimal.Parse(pprice.Text);
            db.SaveChanges();
            this.msg.InnerHtml = "Data Inserted.";
            this.alert.Attributes.Add("class", "alert alert-success");
            this.alert.Visible = true;
        }
    }
}