using Delicacy_UA.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Delicacy_UA.Pages.Management
{
    public partial class ManageProductTypes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            ProductTypeModel model = new ProductTypeModel();
            ProductType pt = CreateProductType();

            lblResult.Text = model.InsertProductType(pt);
            TxtName.Text = string.Empty;
        }

        private ProductType CreateProductType()
        {
            ProductType p = new ProductType();
            p.Name = TxtName.Text;
            return p;       
        }
    }
}