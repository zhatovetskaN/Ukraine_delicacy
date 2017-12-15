using Delicacy_UA.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Delicacy_UA.Pages
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }
        private void FillPage()
        {
            if(!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                ProductModel productModel = new ProductModel();
                Product product = productModel.GetProduct(id);

                //Fill page with data
                lblPrice.Text = "Cijena za kilogram: <br/> " + product.Price + " kn";
                lblTitle.Text = product.Name;
                lblDescription.Text = product.Description;
                lblItemNr.Text = id.ToString();
                imgProduct.ImageUrl = "~/ukrajinske_delicije/Proizvodi/slatko/bomboni" + product.Image;

                //Fill amount dropdownlist with numbers 1-10
                int[] amount = Enumerable.Range(1, 10).ToArray();
                ddlAmount.DataSource = amount;
                ddlAmount.AppendDataBoundItems = true;
                ddlAmount.DataBind();
            }
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                string clientId = Context.User.Identity.GetUserId();

                if (clientId != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                int amount = Convert.ToInt32(ddlAmount.SelectedValue);

                
                    Basket basket = new Basket
                    {
                        Amount = amount,
                        ClientID = clientId,
                        DatePurchased = DateTime.Now,
                        IsInBasket = true,
                        ProductID = id
                    };

                    BasketModel basketModel = new BasketModel();
                    lblResult.Text = basketModel.InsertBasket(basket);
                }
                else
                {
                    lblResult.Text = "Molimo prijaviti se kako biste naručili artikl";
                }
            }
           
        }
    }
}