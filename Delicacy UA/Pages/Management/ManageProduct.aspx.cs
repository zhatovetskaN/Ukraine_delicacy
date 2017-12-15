using Delicacy_UA.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Infrastructure;

namespace Delicacy_UA.Pages.Management
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetImages();
           
          
           
           
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            ProductModel productModel = new ProductModel();
            Product product = CreateProduct();
            
            
            
          
                LblResult.Text = productModel.InsertProduct(product);
                TxtName.Text = string.Empty;
                TxtPrice.Text = string.Empty;
                TxtDescription.Text = string.Empty;          

        }



        private void GetImages()
        {
           
                try
                {
                    ArrayList imageList = new ArrayList();



                    string[] images = Directory.GetFiles(Server.MapPath("~/ukrajinske_delicije/Proizvodi/slatko/bomboni"));


                    foreach (string image in images)
                    {

                        string imageName = Path.GetFileName(image);
                        DdlImage.SelectedValue = imageName;

                        imageList.Add(imageName);
                        // DdlTypeOfProducts. = "Bomboni";
                        // DdlTypeOfProducts.DataValueField = "TypeID";

                        DdlImage.DataSource = imageList;
                        DdlImage.AppendDataBoundItems = false;
                        DdlImage.DataBind();

                    }

                    


                }
                catch (Exception e)
                {
                    LblResult.Text = e.ToString();

                }
             
        }
        private Product CreateProduct()
        {
            
            Product product = new Product();
            product.Name = TxtName.Text;
            product.Price = Convert.ToDouble(TxtPrice.Text);
            product.Type2Id = Convert.ToInt32(DdlTypeOfProducts.SelectedValue);
            product.Description = TxtDescription.Text;
            product.Image = DdlImage.SelectedValue;

            return product;
        }

        
    }
}