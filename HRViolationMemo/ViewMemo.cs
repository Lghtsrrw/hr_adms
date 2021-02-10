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
            fillReviewTable();
            fillApprovedTable();
        }
        
        private void forNoticetoExplain()
        {
            using (NarrativeMemoForm nmf = new NarrativeMemoForm(empid))
            {
                MySqlDataReader _reader = csm.sqlCommand("Select *,YEAR(nte.date_reported)as _year, Day(nte.date_reported)as _day, Month(nte.date_reported)as _mon, date_format(date_created, '%m/%d/%Y')as'datecreated' from noticetoexplain nte inner join record r on nte.memo_no = r.memo_no where nte.memo_no = '" + tblDraft.CurrentRow.Cells[0].Value.ToString()+"'").ExecuteReader();
                while (_reader.Read())
                {
                    nmf.lblGenRecNo.Text = _reader.GetString("memo_no");
                    nmf.txtDateNow.Text = _reader.GetString("datecreated");
                    nmf.retrieveEmployee(_reader.GetString("empid_to"));
                    nmf.dtReported.Value = new DateTime(int.Parse(_reader.GetString("_year")), int.Parse(_reader.GetString("_mon")), int.Parse(_reader.GetString("_day")) );
                    nmf.txtSubject.Text = _reader.GetString("title");
                    nmf.txtFinding.Text = _reader.GetString("findings");
                    nmf.txtMngComm.Text = _reader.GetString("commentary");

                    nmf.ShowDialog();
                }
                csm.closeSql();

            }
        }
        private void filltData(string a, string b, DataGridView dgv)
        {
            MySqlDataReader _readerII = csm.sqlCommand("SELECT ms.memo_no, title, date_format(date_updated, '%M %d, %Y')as'dtup', status FROM memo_status ms INNER JOIN record r ON ms.memo_no = r.memo_no WHERE ms.memo_no = '" + a +"' ORDER BY date_updated DESC LIMIT 1").ExecuteReader();
            while (_readerII.Read())
            {
                if (_readerII.GetString("status") == b)
                {
                    dgv.Rows.Add(_readerII.GetString("memo_no"), _readerII.GetString("title"), _readerII.GetString("dtup"), _readerII.GetString("status"));
                }
            }
            csm.closeSql();
        }

        private void fillReviewTable()
        {
            tblReview.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select distinct memo_no from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                filltData(_reader.GetString("memo_no"), "Review", tblReview);
            }
            csm.closeSql();
        }

        private void fillDraftTable()
        {
            tblDraft.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select distinct memo_no from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                filltData(_reader.GetString("memo_no"), "Draft", tblDraft);
            }
            csm.closeSql();
        }

        private void fillApprovedTable()
        {
            tblApproved.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select distinct memo_no from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                filltData(_reader.GetString("memo_no"), "Done", tblApproved);
            }
            csm.closeSql();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void tblDraft_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Edit this memo?", "Edit", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                forNoticetoExplain();
                this.Dispose();
            }
        }

        private void tblReview_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void tblApproved_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("You're about to create a Management Decision Memo.\n\t Proceed?", "Management Decision Memo", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                using(ManagementDecisionsForm mdf = new ManagementDecisionsForm(empid))
                {
                    string memo = tblApproved.CurrentRow.Cells[0].Value.ToString();
                    string date_created = csm.countSQL("select date_updated from memo_status where memo_no = '" + memo + "' order by date_updated desc limit 1", "date_updated");
                    mdf.fillNoticetoExplain(memo, date_created);
                    mdf.ShowDialog();
                    this.Dispose();
                }
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void tabControl2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }
    }
}
