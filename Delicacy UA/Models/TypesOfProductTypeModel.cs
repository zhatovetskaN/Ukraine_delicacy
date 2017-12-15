using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Delicacy_UA.Models
{
    public class TypesOfProductTypeModel
    {
        public string InsertTypesOfProductType(TypesOfProductType typesOfProductType)
        {

            try
            {

                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                db.TypesOfProductTypes.Add(typesOfProductType);
                db.SaveChanges();
                return typesOfProductType.Name + " uspješno je umetnuto";

            }
            catch (Exception e)
            {
                return "Error" + e;
            }

        }
        public string UpdateTypesOfProductType(int id, TypesOfProductType typesOfProductType)
        {
            try
            {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                TypesOfProductType p = db.TypesOfProductTypes.Find(id);
                p.Name = typesOfProductType.Name;
                p.TypeID = typesOfProductType.TypeID;
                db.SaveChanges();

                return typesOfProductType.Name + "uspješno je ažurirano";
            }
            catch (Exception e)
            {
                return "Error" + e;
            }
        }
        public string DeleteTypesOfProductType(int id)
        {
            try
            {
                Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
                TypesOfProductType typesOfProductType = db.TypesOfProductTypes.Find(id);
                db.TypesOfProductTypes.Attach(typesOfProductType);
                db.TypesOfProductTypes.Remove(typesOfProductType);

                db.SaveChanges();

                return typesOfProductType.Name + "uspješno je obrisano";
            }
            catch (Exception e)
            {
                return "Error" + e;
            }
        }
    }
}