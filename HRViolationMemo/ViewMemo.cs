using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KOTL;

namespace HRViolationMemo
{
    public partial class ViewMemo : Form
    {
        CallSqlModule csm = new CallSqlModule();
        string empid;
        public ViewMemo(string empid)
        {
            InitializeComponent();
            this.empid = empid;
            lblUser.Text = csm.countSQL("Select empName from employees where empid = '"+ this.empid +"'","empName");
            fillDraftTable();
        }
        private void fillDraftTable()
        {
            string query = "SELECT r.memo_no as 'Memo No.', title as 'Title', date_updated as 'Created at' FROM record r " +
                           "INNER JOIN memo_status ms ON r.memo_no = ms.memo_no " +
                           "WHERE ms.status = 'DRAFT'";

            tblDraft.DataSource = csm.fillTable(query).Tables[0];
        }
        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
