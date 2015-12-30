using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using City_Web.Service;
using City_Web.model;

namespace City_Web.Service
{
    public class TBInfoService
    {
        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public int AddTbInfo(TBInfo info)
        {
            int ok = 0;
            string sql = "INSERT INTO　tb_info(info_type, info_title, info_content," +
                "info_linkman, info_phone, info_email, info_date, info_state,info_payfor) values" +
                "(@type,@title,@content,@linkman,@phone,@email,@date,@state,@payfor)";
            SqlParameter[] values = new SqlParameter[9];
            values[0] = new SqlParameter("@type", info.InfoType);
            values[1] = new SqlParameter("@title", info.InfoTitle);
            values[2] = new SqlParameter("@content", info.InfoContent);
            values[3] = new SqlParameter("@linkman", info.InfoLinkMan);
            values[4] = new SqlParameter("@phone", info.InfoPhone);
            values[5] = new SqlParameter("@email", info.InfoEmail);
            values[6] = new SqlParameter("@date", info.InfoDate);
            values[7] = new SqlParameter("@state", info.InfoState);
            values[8] = new SqlParameter("@payfor", info.InfoPayFor);

            ok = DBHelper.ExecuteCommand(sql, values);
            return ok;
        }
        /// <summary>
        /// 根据编号删除信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteInfoById(int id)
        {
              int ok = 0;
            string sql = "delete from tb_info where id="+id;          
            ok = DBHelper.ExecuteCommand(sql);
            return ok;
        }
        public int UpdateInfo(TBInfo info)
        {
            int ok = 0;
            string sql = "INSERT INTO　tb_info(info_type, info_title, info_content," +
                "info_linkman, info_phone, info_email, info_date, info_state,info_payfor) values" +
                "(@type,@title,@content,@linkman,@phone,@email,@date,@state,@payfor)";
            sql = "update tb_info set info_type=@type, info_title=@title, info_content=@content," +
                "info_linkman=@linkman, info_phone=@phone, info_email=@email " +
                "where id=" + info.Id;
            SqlParameter[] values = new SqlParameter[6];
            values[0] = new SqlParameter("@type", info.InfoType);
            values[1] = new SqlParameter("@title", info.InfoTitle);
            values[2] = new SqlParameter("@content", info.InfoContent);
            values[3] = new SqlParameter("@linkman", info.InfoLinkMan);
            values[4] = new SqlParameter("@phone", info.InfoPhone);
            values[5] = new SqlParameter("@email", info.InfoEmail);
           

            ok = DBHelper.ExecuteCommand(sql, values);
            return ok;
        }
        /// <summary>
        /// 根据类型编号和付费情况获取一条信息
        /// </summary>
        /// <param name="payFor">负数则不看付费情况</param>
        /// <param name="typeId">类型编号</param>
        /// <returns></returns>
        public TBInfo GetTheNewInfoByPayFor(int payFor, int typeId)
        {
            TBInfo tbInfo = new TBInfo();
            string sql = "select top 1 * from tb_info where info_payFor=" + payFor;
            if (typeId > 0)
            {
                sql += " and info_type=" + typeId;
                  
            }
            sql += " order by id desc";
            DataTable dt = DBHelper.GetDataTable(sql);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                tbInfo.Id = Convert.ToInt32(dr["id"]);
                tbInfo.InfoTitle = dr["info_title"].ToString();
                tbInfo.InfoType = Convert.ToInt32(dr["info_type"]);
                tbInfo.InfoContent = dr["info_content"].ToString();
                tbInfo.InfoDate = dr["info_date"].ToString();
                tbInfo.InfoLinkMan = dr["info_linkman"].ToString();
                tbInfo.InfoEmail = dr["info_email"].ToString();
                tbInfo.InfoPhone = dr["info_phone"].ToString();
            }
            return tbInfo;
        }
        /// <summary>
        /// 根据编号获取信息详细资料
        /// </summary>
        /// <param name="id">类型编号</param>
        /// <returns></returns>
        public TBInfo GetTheNewInfoById(int id)
        {
            TBInfo tbInfo = new TBInfo();
            string sql = "select  * from tb_info where id=" + id;          
            DataTable dt = DBHelper.GetDataTable(sql);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                tbInfo.Id = Convert.ToInt32(dr["id"]);
                tbInfo.InfoTitle = dr["info_title"].ToString();
                tbInfo.InfoType = Convert.ToInt32(dr["info_type"]);
                tbInfo.InfoContent = dr["info_content"].ToString();
                tbInfo.InfoDate = dr["info_date"].ToString();
                tbInfo.InfoLinkMan = dr["info_linkman"].ToString();
                tbInfo.InfoEmail = dr["info_email"].ToString();
                tbInfo.InfoPhone = dr["info_phone"].ToString();
            }
            return tbInfo;
        }
       
        /// <summary>
        /// 获取信息列表，可以更具类型编号和信息标题关键字查找
        /// 
       /// </summary>
       /// <param name="typeId">类型编号</param>
       /// <param name="keys">信息标题关键字</param>
       /// <param name="count">获取信息的条数</param>
       /// <param name="payFor">付费情况 0：未付费 1:已付费 负数：所有的</param>
       /// <param name="searchtype">查找类型，0：模糊查找 1：全字查找</param>
       /// <returns></returns>
       
        public ArrayList GetInfoList(int typeId, string keys,int count,int payFor, int searchtype)
        {
            ArrayList list = new ArrayList();

            string sql = "select ";
            if (0 < count)
            {
                sql += "top "+count;
            }

            sql += " tb_info.*, tb_type.type_intro from tb_info "
                     + "inner join tb_type on tb_info.info_type=tb_type.id where 1=1 ";
            if (typeId > 0)
            {
                sql += " and info_type=" + typeId;
            }
            if (0 == searchtype)
            {
                if (keys != "")
                {
                    sql += " and info_title like '%" + keys + "%' ";
                }
            }
            if (1 == searchtype)
            {
                if (keys != "")
                {
                    sql += " and info_title= '"+ keys + "' ";
                }
            }

            if (payFor >= 0)
            {
                sql += " and info_payFor = " + payFor;
            }
            sql += " order by id desc";
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TBInfo info = new TBInfo();
                info.Id = Convert.ToInt32(dr[0]);
                info.TbType.TypeIntro = dr["type_intro"].ToString();
                info.InfoTitle = dr["info_title"].ToString();
                info.InfoDate = dr["info_date"].ToString();
                info.InfoLinkMan = dr["info_linkman"].ToString();
                list.Add(info);
            }
            return list;
        }
        /// <summary>
        /// 根据列名，关键字 全字查找 模糊查找
        /// </summary>
        /// <param name="typeId">列名</param>
        /// <param name="keys">关键字</param>
        /// <param name="searchtype">查找模式 0：模糊查找 1：全字查找 </param>
        /// <returns></returns>
        public ArrayList GetInfoListByCounlom(int typeId, string keys, int searchtype)
        {
            ArrayList list = new ArrayList();

            string sql = "select ";
            

            sql += " tb_info.*, tb_type.type_intro from tb_info "
                     + "inner join tb_type on tb_info.info_type=tb_type.id where 1=1 ";
            if (typeId > 0)
            {
                sql += " and info_type=" + typeId;
            }
            if (0 == searchtype)
            {
                if (keys != "")
                {
                    sql += " and info_title like '%" + keys + "%' ";
                }
            }
            if (1 == searchtype)
            {
                if (keys != "")
                {
                    sql += " and info_title= '" + keys + "' ";
                }
            }

           
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TBInfo info = new TBInfo();
                info.Id = Convert.ToInt32(dr[0]);
                info.TbType.TypeIntro = dr["type_intro"].ToString();
                info.InfoTitle = dr["info_title"].ToString();
                info.InfoDate = dr["info_date"].ToString();
                info.InfoLinkMan = dr["info_linkman"].ToString();
                list.Add(info);
            }
            return list;
        }
        /// <summary>
        /// 根据搜索条件查询
        /// </summary>
        /// <param name="ok">模糊还是全字匹配</param>
        /// <param name="keys">输入的关键字</param>
        /// <param name="con">选择的列</param>
        /// <returns></returns>
        public ArrayList GetInfoByCondition(int ok, string keys, string con)
        {
            ArrayList list = new ArrayList();
            string sql = "select * from tb_info where " + con;
            if (ok == 0)
                sql += "='" + keys + "'";
            else if (ok == 1)
                sql += " like '%" + keys + "%'";
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TBInfo info = new TBInfo();
                info.Id = Convert.ToInt32(dr[0]);
                info.InfoTitle = dr["info_title"].ToString();
                info.InfoContent = dr["info_content"].ToString();
                info.InfoLinkMan = dr["info_linkman"].ToString();
                info.InfoPhone = dr["info_phone"].ToString();
                info.InfoEmail = dr["info_email"].ToString();
                info.InfoDate = dr["info_date"].ToString();
                list.Add(info);
            }
            return list;
            //表连接直接加类。不论有无条件都加where...1=1,恒等式无所谓，再加条件只需加and

        }
    }
}