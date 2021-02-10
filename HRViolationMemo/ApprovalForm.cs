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
using MySql.Data.MySqlClient;

namespace HRViolationMemo
{
    public partial class ApprovalForm : Form
    {
        Form lf;
        string empid;
        CallSqlModule csm = new CallSqlModule();
        public ApprovalForm(Form lf, string empid)
        {
            InitializeComponent();
            this.lf = lf;

            fillTblApproval();
            this.empid = empid;
            lblUser.Text = csm.countSQL("select empname from employees where empid = '"+empid+"'","empname");
            fillTblAppoved();
        }
        private void savetoStatus(string memono, string status)
        {
            csm.saveInto("INSERT INTO memo_status (memo_no, status, date_updated) values ('" + memono + "', '" + status + "', now())");
        }
        private void fillTblApproval()
        {
            tblApproval.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select memo_no, status from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                fillData(_reader.GetString("status"), "Approve", tblApproved);
            }
        }

        private void fillTblAppoved()
        {
            tblApproval.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select memo_no, status from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                fillData(_reader.GetString("status"), "Done", tblApproval);
            }
        }
        private void fillData(string a, string b, DataGridView dgv)
        {
            MySqlDataReader _readerII = csm.sqlCommand("SELECT ms.memo_no, title, date_format(date_updated, '%M %d, %Y')as'dtup', status FROM memo_status ms INNER JOIN record r ON ms.memo_no = r.memo_no WHERE ms.memo_no = '" + a + "' ORDER BY date_updated DESC LIMIT 1").ExecuteReader();
            while (_readerII.Read())
            {
                if (_readerII.GetString("status") == b)
                {
                    dgv.Rows.Add(_readerII.GetString("memo_no"), _readerII.GetString("title"), _readerII.GetString("dtup"), _readerII.GetString("status"));
                }
            }
        }
        private void printPreview(string memono)
        {
            using (NarrativeMemoForm nmf = new NarrativeMemoForm(empid))
            {
                MySqlDataReader _reader = csm.sqlCommand("Select *,YEAR(nte.date_reported)as _year, Day(nte.date_reported)as _day, Month(nte.date_reported)as _mon, date_format(date_created, '%m/%d/%Y')as'datecreated' from noticetoexplain nte inner join record r on nte.memo_no = r.memo_no where nte.memo_no = '" + memono + "'").ExecuteReader();
                while (_reader.Read())
                {
                    nmf.lblGenRecNo.Text = _reader.GetString("memo_no");
                    nmf.txtDateNow.Text = _reader.GetString("datecreated");
                    nmf.retrieveEmployee(_reader.GetString("empid_to"));
                    nmf.dtReported.Value = new DateTime(int.Parse(_reader.GetString("_year")), int.Parse(_reader.GetString("_mon")), int.Parse(_reader.GetString("_day")));
                    nmf.txtSubject.Text = _reader.GetString("title");
                    nmf.txtFinding.Text = _reader.GetString("findings");
                    nmf.txtMngComm.Text = _reader.GetString("commentary");

                    nmf.printPreview();
                    nmf.Dispose();
                }
            }
        }

        private void ApprovalForm_Load(object sender, EventArgs e)
        {
        }

        private void button2_Click(object sender, EventArgs e)
        {
            printPreview(tblApproval.CurrentRow.Cells[0].Value.ToString());
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to Logout?", "Logout", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                lf.Show();
                this.Dispose();
            }
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to submit for Approval?", "Submitting", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                savetoStatus(tblApproval.CurrentRow.Cells[0].Value.ToString(), "Done");
                fillTblApproval();
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            printPreview(tblApproved.CurrentRow.Cells[0].Value.ToString());
        }
    }
}
