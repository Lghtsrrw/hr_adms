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
        string empid;
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

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
    }
}
