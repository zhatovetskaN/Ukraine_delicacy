using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Delicacy_UA.Models
{
    public class UserInfoModel
    {
        public UserInformation GetUserInformation(string guId)
        {
            Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
            UserInformation info = (from x in db.UserInformations where x.GUID == guId select x).FirstOrDefault();
            return info;
        }
        public void InsertUserInformation(UserInformation info)
        {
            Ukrainian_delicacyEntities db = new Ukrainian_delicacyEntities();
            db.UserInformations.Add(info);
            db.SaveChanges();
        }
    }
}