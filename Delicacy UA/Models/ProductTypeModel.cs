using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Delicacy_UA.Models
{
    public class ProductTypeModel
    {
        public string InsertProductType(ProductType productType)
        {

                try
                {

                    Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                    db.ProductTypes.Add(productType);
                    db.SaveChanges();
                    return productType.Name + " uspješno je umetnuto";

                }
                catch (Exception e)
                {
                    return "Error" + e;
                }

            }
            public string UpdateProductType(int id, ProductType productType)
            {
                try
                {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                ProductType p = db.ProductTypes.Find(id);
                p.Name = productType.Name;


                db.SaveChanges();

                    return productType.Name + "uspješno je ažurirano";
                }
                catch (Exception e)
                {
                    return "Error" + e;
                }
            }
            public string DeleteProductType(int id)
            {
                try
                {
                    Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                    ProductType productType = db.ProductTypes.Find(id);
                    db.ProductTypes.Attach(productType);
                    db.ProductTypes.Remove(productType);

                    db.SaveChanges();

                    return productType.Name + "uspješno je obrisano";
                }
                catch (Exception e)
                {
                    return "Error" + e;
                }
            }
        }
    
    
}