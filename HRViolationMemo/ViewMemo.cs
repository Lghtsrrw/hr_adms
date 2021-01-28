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
        }

        private void subForNoticetoExplain(string a,DataGridView dgv)
        {
            MySqlDataReader _Reader = csm.sqlCommand("SELECT ntep.offenseNo,concat('SECTION ',sec_num, ' ',sec_name,', Paragraph ', sec_code,' ',description ) as penalty FROM nte_penalty ntep INNER JOIN offensesnpenalty onp ON ntep.offenseNo = onp.id WHERE memo_no = '" + a+"'").ExecuteReader();
            while (_Reader.Read())
            {
                dgv.Rows.Add(_Reader.GetString("offenseNo"), _Reader.GetString("penalty"));
            }
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
                    subForNoticetoExplain(_reader.GetString("memo_no"), nmf.tblPenalty);
                    nmf.txtFinding.Text = _reader.GetString("findings");
                    nmf.txtMngComm.Text = _reader.GetString("commentary");

                    nmf.ShowDialog();
                }

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
        }

        private void fillReviewTable()
        {
            tblReview.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select distinct memo_no from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                filltData(_reader.GetString("memo_no"), "Review", tblReview);
            }
        }

        private void fillDraftTable()
        {
            tblDraft.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select distinct memo_no from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                filltData(_reader.GetString("memo_no"), "Draft", tblDraft);
            }
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
    }
}
