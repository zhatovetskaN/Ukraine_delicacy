using Delicacy_UA.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Delicacy_UA
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }
        private void FillPage()
        {
            //Get a list of products from database
            ProductModel productModel = new ProductModel();
            List<Product> products = productModel.GetAllProducts();
            //Make sure products exist in the database
            if(products !=null)
            {
                //Create a new panel with an ImageButton and 2 labels for each product
                foreach(Product product in products)
                {
                    Panel productPanel = new Panel();
                    ImageButton imageButton = new ImageButton();
                    Label labelName = new Label();
                    Label labelPrice = new Label();

                    //Set ChildCpntroles properties
                    imageButton.ImageUrl = "~/ukrajinske_delicije/Proizvodi/slatko/bomboni" + product.Image;
                    imageButton.CssClass = "productImage";
                    imageButton.PostBackUrl = "~/Pages/Products.aspx?id=" + product.Id;

                    labelName.Text = product.Name;
                    labelName.CssClass = "productName";
                    labelPrice.Text = product.Price + " kn";
                    labelPrice.CssClass = "productPrice";

                    //Add child controls to Panel
                    productPanel.Controls.Add(imageButton);
                    productPanel.Controls.Add(new Literal { Text = "<br />" });
                    productPanel.Controls.Add(labelName);
                    productPanel.Controls.Add(new Literal { Text = "<br />" });
                    productPanel.Controls.Add(labelPrice);

                    //Add dynamic Panels to static Panels
                    PnlProducts.Controls.Add(productPanel);
                }

            }
            else
            {
                //No products found
                PnlProducts.Controls.Add(new Literal { Text = "No products found" });
            } 
        }
    }
}