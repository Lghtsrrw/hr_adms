using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using KOTL;
using System.Windows.Forms;

namespace HRViolationMemo
{
    class HRADMS
    {
        CallSqlModule csm = new CallSqlModule();
        public string autoGenRecNo()
        {
            int a = Int32.Parse(csm.countSQL("select count(memo_no)as'allcount' from record where RIGHT(memo_no , 4) = '" + DateTime.Now.ToString("yyyy") + "'", "allcount"));
            string b = String.Format("{0:D4}", (a + 1)) + "-" + DateTime.Now.ToString("yyyy");
            return b;
        }

        public bool verifyPenalty(string memo_no, string[] offenseNo)
        {
            bool returnValue = false;
            for (int i = 0; i < offenseNo.Length; i++)
            {
                if (int.Parse(csm.countSQL("select count(*)'all' from nte_penalty where memo_no = '" + memo_no + "' and offenseNo = '" + offenseNo[i] + "'", "all")) > 0)
                {
                    returnValue = true;
                }
            }
            
            return returnValue;
        }
        public void savetoPenalty(DataGridView dgv, string memo_no )
        {
            for (int i = 0; i < dgv.Rows.Count; i++)
            {
                csm.saveInto("INSERT into nte_penalty (offenseNo, memo_no) values ('" + dgv.Rows[i].Cells[1].Value.ToString() + "', '" + memo_no + "')");
            }
        }

    }
}
