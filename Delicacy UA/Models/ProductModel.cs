using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Delicacy_UA.Models
{
    public class ProductModel
    {
        public string InsertProduct(Product product)
        {

            try
            {

                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                db.Products.Add(product);
                db.SaveChanges();
                return product.Name + " uspješno je umetnuto";

            }
            catch (Exception e)
            {
                return "Error" + e;
            }

        }
        public string UpdateProduct(int id, Product product)
        {
            try
            {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                Product p = db.Products.Find(id);
                p.Name = product.Name;
                p.Image = product.Image;
                p.Price = product.Price;
                p.Type2Id = product.Type2Id;
                p.Description = product.Description;

                db.SaveChanges();

                return product.Name + " uspješno je ažurirano";
            }
            catch (Exception e)
            {
                return "Error" + e;
            }
        }
        public string DeleteProduct(int id)
        {
            try
            {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                Product product = db.Products.Find(id);
                db.Products.Attach(product);
                db.Products.Remove(product);

                db.SaveChanges();

                return product.Name + " uspješno je obrisano";
            }
            catch (Exception e)
            {
                return "Error" + e;
            }
        }

        public Product GetProduct (int id)
        {
            try
            {
                using (Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities())
                {
                    Product product = db.Products.Find(id);
                    return product;
                }
            }
            catch
            {
                return null;
            }
        }
        public List<Product> GetAllProducts()
        {
            try
            {
                using (Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities())
                {
                    List<Product> products = (from x in db.Products
                                              select x).ToList();
                    return products;
                }
            }
            catch
            {
                return null;
            }
        }
        public List<Product> GetAllProductsByType(int typeid)
        {
            try
            {
                using (Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities())
                {
                    List<Product> products = (from x in db.Products
                                              where x.Type2Id == typeid
                                              select x).ToList();
                    return products;
                }
            }
            catch
            {
                return null;
            }
        }
    }
}