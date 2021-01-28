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
    public partial class ReviewForm : Form
    {
        CallSqlModule csm = new CallSqlModule();
        string empid; Form lf;
        public ReviewForm(Form lf, string empid)
        {
            InitializeComponent();
            this.empid = empid;
            this.lf = lf;
        }

        private void savetoStatus(string memono, string status)
        {
            csm.saveInto("INSERT INTO memo_status (memo_no, status, date_updated) values ('" + memono + "', '" + status + "', now())");
        }

        private void subForNoticetoExplain(string a, DataGridView dgv)
        {
            MySqlDataReader _Reader = csm.sqlCommand("SELECT ntep.offenseNo,concat('SECTION ',sec_num, ' ',sec_name,', Paragraph ', sec_code,' ',description ) as penalty FROM nte_penalty ntep INNER JOIN offensesnpenalty onp ON ntep.offenseNo = onp.id WHERE memo_no = '" + a + "'").ExecuteReader();
            while (_Reader.Read())
            {
                dgv.Rows.Add(_Reader.GetString("offenseNo"), _Reader.GetString("penalty"));
            }
        }

        private void printPreview()
        {
            string attachment = "";
            MySqlDataReader _reader = csm.sqlCommand("Select file_name from attachment where attachCode = '" + tblReview.CurrentRow.Cells[0].Value.ToString() + "'").ExecuteReader();
            while (_reader.Read())
            {
                attachment += _reader.GetString("file_name") + ", ";
            }
            csm.closeSql();

            string thisviolation = "";
            MySqlDataReader _Reader = csm.sqlCommand("SELECT ntep.offenseNo,concat('SECTION ',sec_num, ' ',sec_name,', Paragraph ', sec_code,' ',description ) as penalty FROM nte_penalty ntep INNER JOIN offensesnpenalty onp ON ntep.offenseNo = onp.id WHERE memo_no = '" + tblReview.CurrentRow.Cells[0].Value.ToString() + "'").ExecuteReader();
            while (_Reader.Read())
            {
                thisviolation += _Reader.GetString("penalty") + "\n";
            }
            csm.closeSql();

            MySqlDataReader _readerIII = csm.sqlCommand("Select *,YEAR(nte.date_reported)as _year, Day(nte.date_reported)as _day, Month(nte.date_reported)as _mon, date_format(date_created, '%m/%d/%Y')as'datecreated' from noticetoexplain nte inner join record r on nte.memo_no = r.memo_no where nte.memo_no = '" + tblReview.CurrentRow.Cells[0].Value.ToString() + "'").ExecuteReader();
            while (_readerIII.Read())
            {
                string _position = csm.countSQL("select position from employees where empname = '" + _readerIII.GetString("empid_to") + "'", "position");
                DateTime dt = new DateTime(int.Parse(_readerIII.GetString("_year")), int.Parse(_readerIII.GetString("_mon")), int.Parse(_readerIII.GetString("_day")));

                printPreview pp = new printPreview(_readerIII.GetString("memo_no"), _readerIII.GetString("datecreated"), dt.ToString("MMMM dd, yyyy"), DateTime.Now.ToString("yyyy"), _readerIII.GetString("title").ToUpper(), _readerIII.GetString("empid_to").ToUpper(), _position.ToUpper(), thisviolation, _readerIII.GetString("findings"), _readerIII.GetString("commentary"), attachment, "Personnel Concerned, Concerned Department Manager, Concerned Division Chief/ Supervisor, HRD/PSS 201 File");
                pp.ShowDialog();
            }
            csm.closeSql();
        }

        private void fillTblReview()
        {
            tblReview.Rows.Clear();
            MySqlDataReader _reader = csm.sqlCommand("Select distinct memo_no from memo_status").ExecuteReader();

            while (_reader.Read())
            {
                fillData(_reader.GetString("memo_no"), "Review", tblReview);
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

        private void ReviewForm_Load(object sender, EventArgs e)
        {
            fillTblReview();
            lblUser.Text = csm.countSQL("select empname from employees where empid = '"+empid+"'","empname");
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

        private void button2_Click(object sender, EventArgs e)
        {
            using (NarrativeMemoForm nmf = new NarrativeMemoForm(empid))
            {
                MySqlDataReader _reader = csm.sqlCommand("Select *,YEAR(nte.date_reported)as _year, Day(nte.date_reported)as _day, Month(nte.date_reported)as _mon, date_format(date_created, '%m/%d/%Y')as'datecreated' from noticetoexplain nte inner join record r on nte.memo_no = r.memo_no where nte.memo_no = '" + tblReview.CurrentRow.Cells[0].Value.ToString() + "'").ExecuteReader();
                while (_reader.Read())
                {
                    nmf.lblGenRecNo.Text = _reader.GetString("memo_no");
                    nmf.txtDateNow.Text = _reader.GetString("datecreated");
                    nmf.retrieveEmployee(_reader.GetString("empid_to"));
                    nmf.dtReported.Value = new DateTime(int.Parse(_reader.GetString("_year")), int.Parse(_reader.GetString("_mon")), int.Parse(_reader.GetString("_day")));
                    nmf.txtSubject.Text = _reader.GetString("title");
                    subForNoticetoExplain(_reader.GetString("memo_no"), nmf.tblPenalty);
                    nmf.txtFinding.Text = _reader.GetString("findings");
                    nmf.txtMngComm.Text = _reader.GetString("commentary");

                    nmf.printPreview();
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to submit for Approval?", "Submitting", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                savetoStatus(tblReview.CurrentRow.Cells[0].Value.ToString(), "Approve");
                fillTblReview();
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            using (NarrativeMemoForm nmf = new NarrativeMemoForm(empid))
            {
                MySqlDataReader _reader = csm.sqlCommand("Select *,YEAR(nte.date_reported)as _year, Day(nte.date_reported)as _day, Month(nte.date_reported)as _mon, date_format(date_created, '%m/%d/%Y')as'datecreated' from noticetoexplain nte inner join record r on nte.memo_no = r.memo_no where nte.memo_no = '" + tblReview.CurrentRow.Cells[0].Value.ToString() + "'").ExecuteReader();
                while (_reader.Read())
                {
                    nmf.lblGenRecNo.Text = _reader.GetString("memo_no");
                    nmf.txtDateNow.Text = _reader.GetString("datecreated");
                    nmf.retrieveEmployee(_reader.GetString("empid_to"));
                    nmf.dtReported.Value = new DateTime(int.Parse(_reader.GetString("_year")), int.Parse(_reader.GetString("_mon")), int.Parse(_reader.GetString("_day")));
                    nmf.txtSubject.Text = _reader.GetString("title");
                    subForNoticetoExplain(_reader.GetString("memo_no"), nmf.tblPenalty);
                    nmf.txtFinding.Text = _reader.GetString("findings");
                    nmf.txtMngComm.Text = _reader.GetString("commentary");

                    nmf.ShowDialog();
                }

            }
        }
    }
}
