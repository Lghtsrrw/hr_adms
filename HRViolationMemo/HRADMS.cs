using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using KOTL;

namespace HRViolationMemo
{
    class HRADMS
    {
        CallSqlModule csm = new CallSqlModule();
        public string autoGenRecNo()
        {
            int a = Int32.Parse(csm.countSQL("select count(memo_no)as'allcount' from record where LEFT(memo_no , 2) = '" + DateTime.Now.ToString("yy") + "'", "allcount"));
            string b = DateTime.Now.ToString("yy") + String.Format("{0:D4}", (a + 1));
            return b;
        }
    }
}
