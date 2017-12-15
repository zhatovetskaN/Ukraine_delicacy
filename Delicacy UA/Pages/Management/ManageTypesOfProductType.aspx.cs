using Delicacy_UA.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Delicacy_UA.Pages.Management
{
    public partial class ManageTypesOfProductType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            TypesOfProductTypeModel model = new TypesOfProductTypeModel();
            TypesOfProductType pt = CreateTypesOfProductType();

            LblResult.Text = model.InsertTypesOfProductType(pt);
            TxtName.Text = string.Empty;
        }
        private TypesOfProductType CreateTypesOfProductType()
        {
            TypesOfProductType p = new TypesOfProductType();
            p.Name = TxtName.Text;
            p.TypeID = Convert.ToInt32(DdlType.SelectedValue);
            return p;
        }
    }
}