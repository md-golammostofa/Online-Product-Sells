using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mostofa_1249807
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1 ds = new DataSet1();
            DataSet1TableAdapters.categoriesTableAdapter da = new DataSet1TableAdapters.categoriesTableAdapter();
            DataSet1.categoriesDataTable dt = (DataSet1.categoriesDataTable)ds.Tables["categories"];
            da.Fill(dt);
            DataSet1TableAdapters.productsTableAdapter da1 = new DataSet1TableAdapters.productsTableAdapter();
            DataSet1.productsDataTable dt1 = (DataSet1.productsDataTable)ds.Tables["products"];
            da1.Fill(dt1);
            CrystalReport1 rpt = new CrystalReport1();

            rpt.SetDataSource(ds);
            //rpt.Refresh();

            this.CrystalReportViewer1.ReportSource = rpt;
        }
    }
}