using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Delicacy_UA.Models
{
    public class BasketModel
    {
        public string InsertBasket(Basket basket)
        {

            try
            {

                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                db.Baskets.Add(basket);
                db.SaveChanges();
                return basket.DatePurchased + " uspješno je umetnuta";

            }
            catch (Exception e)
            {
                return "Error" + e;
            }

        }
        public string UpdateBasket(int id, Basket basket)
        {
            try
            {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                Basket p = db.Baskets.Find(id);
                p.DatePurchased = basket.DatePurchased;
                p.Amount = basket.Amount;
                p.ClientID = basket.ClientID;
                p.ProductID = basket.ProductID;
                p.IsInBasket = basket.IsInBasket;

                db.SaveChanges();

                return basket.DatePurchased + "uspješno je ažurirano";
            }
            catch (Exception e)
            {
                return "Error" + e;
            }
        }
        public string DeleteBasket(int id)
        {
            try
            {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                Basket basket = db.Baskets.Find(id);
                db.Baskets.Attach(basket);
                db.Baskets.Remove(basket);

                db.SaveChanges();

                return basket.DatePurchased + "uspješno je obrisano";
            }
            catch (Exception e)
            {
                return "Error" + e;
            }
        }

    }
}