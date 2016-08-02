using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BDH.Sql;

namespace BDH.Manage
{
    public class BriComDisInfoManager
    {
        public static void Read()
        {
            ISqlHelper sql_helper = SqlHelperFactory.GetDefaultSqlHelper();
            string sql = "select count (*) from mdtbl_bri_com_dis_info";
            int val = sql_helper.ExecuteInt32(sql);
            Console.WriteLine("count=" + val.ToString());
        }

        public static float GetMaxScale(String bridgeType,String Structure,String compnonent,String member,String disease)
        {
            String sqlCon = String.Format("SELECT  detection_deduct_value FROM mdtbl_detection_deduct where detection_max_scale={0} and detection_cur_scale={1}", maxScale, currentScale);
            ISqlHelper sql_helper = SqlHelperFactory.GetDefaultSqlHelper();
            float f = float.Parse(sql_helper.ExecuteObject(sqlCon).ToString());
            f = (float)Math.Round(f, 2);
            return f;
        }

    }
}
