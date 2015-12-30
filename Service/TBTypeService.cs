using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using City_Web.Service;
using City_Web.model;

namespace City_Web.Service
{
    public class TBTypeService 
    {
        /// <summary>
        /// 获取数据库数据
        /// </summary>
        /// <returns></returns>
        public ArrayList GetTBTypeList()
        {
            ArrayList list = new ArrayList();
            string sql = "select * from tb_type";
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TBType tb = new TBType();
                tb.Id = Convert.ToInt32(dr["id"]);
                tb.TypeIntro = dr["type_intro"].ToString();
                list.Add(tb);
            }
            return list;
        }
        /// <summary>
        /// 将类型编号转为中文名
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetTBTypeById(int id)
        {
           
            string sql = "select * from tb_type where type_sign=" + id;
            SqlDataReader rdr = DBHelper.GetDataReader(sql);
            string typeName = null;
            try
            {
                while (rdr.Read())
                {
                    typeName = rdr["type_intro"].ToString();
                }
            }
            catch
            {

            }
            return typeName;
           
        }
    }
}