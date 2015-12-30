using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using City_Web.model;
using City_Web.Service;

namespace City_Web.Service
{
    
    class UserServiec
    {
        /// <summary>
        /// 验证用户信息
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public Users CheckLogin(Users user)
        {
            Users returnUser =  null;
            string sql = "select * from tb_user where user_name=@loginName and user_password=@password";
            SqlParameter[] values = new SqlParameter[2];
            values[0] = new SqlParameter("@loginName", user.LoginName);
            values[1] = new SqlParameter("@password", user.Password);

            DataTable dt = DBHelper.GetDataTable(sql, values);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                returnUser = new Users();
                returnUser.LoginName = user.LoginName;
                returnUser.Password = user.Password;
                returnUser.Id = Convert.ToInt32(dr["id"]);
              //  returnUser.RealName = dr["realName"].ToString();
            }
            return returnUser;           

        }

    }
}
