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
    public partial class ManagementDecisionsForm : Form
    {
        HRADMS hr = new HRADMS();
        CallSqlModule csm = new CallSqlModule();
        string empid, attachment = "", thisviolation = "";
        public ManagementDecisionsForm(string empid)
        {
            InitializeComponent();
            txtMemoNo.Text = hr.autoGenRecNo();
            this.empid = empid;
            lblUser.Text = csm.countSQL("select empName from employees where empid = '"+empid+"'", "empName").ToUpper();
        }
        #region dev methods
        public void fillNoticetoExplain(string memono, string datecreated)
        {
            txtBase.Text = memono;
            txtBaseDateCreated.Text = datecreated;
        }
        public void printPreview()
        {
            MySqlDataReader _reader = csm.sqlCommand("Select file_name from attachment where attachCode = '" + lblGenRecNo.Text + "'").ExecuteReader();

            while (_reader.Read())
            {
                attachment += _reader.GetString("file_name") + ", ";
            }
            for (int i = 0; i < tblPenalty.Rows.Count; i++)
            {
                thisviolation += tblPenalty.Rows[i].Cells[1].Value.ToString() + "\n";
            }
            using (printPreview pp = new printPreview())
            {
                pp.retrieveNarrativeData(fillNarrativeValue());
                pp.ShowDialog();
            }
        }
        #endregion
        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to close?", "Close", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                this.Dispose();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            using (Attachment af = new Attachment(txtMemoNo.Text, lblTitle.Text))
            {
                af.ShowDialog();
            }
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }
    }
}
