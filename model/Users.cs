using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace City_Web.model
{
   public class Users
    {
       /// <summary>
       /// 实体类
       /// </summary>
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string loginName;

        public string LoginName
        {
            get { return loginName; }
            set { loginName = value; }
        }

        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
/*
        private string realName;
        public string RealName
        {
            get { return realName; }
            set { realName = value; }
        }
 */
    }
}
