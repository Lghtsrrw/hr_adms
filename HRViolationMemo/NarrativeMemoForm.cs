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
    public partial class NarrativeMemoForm : Form
    {
        CallSqlModule csm = new CallSqlModule();
        string empid = "";
        public NarrativeMemoForm(string empid)
        {
            InitializeComponent();
            this.empid = empid;
            txtDateNow.Text = DateTime.Now.ToShortDateString();
            autoCompleteEmployee();
            lblGenRecNo.Text = autoGenRecNo();
            lblUser.Text = csm.countSQL("select empname from employees where empid = '"+ empid+"'","empname").ToUpper();
            txtAttachNo.Text = autoAttachCode();
        }

        #region Dev Method

        private void autoCompleteEmployee()
        {
            AutoCompleteStringCollection acs = new AutoCompleteStringCollection();
            txtEmployee.AutoCompleteSource = AutoCompleteSource.CustomSource;
            txtEmployee.AutoCompleteMode = AutoCompleteMode.SuggestAppend;

            MySqlDataReader reader = csm.sqlCommand("Select * from employees").ExecuteReader();
            acs.Clear();
            while (reader.Read())
            {
                acs.Add(reader.GetString("empid"));
                acs.Add(reader.GetString("empname"));
            }
            csm.closeSql();

            txtEmployee.AutoCompleteCustomSource = acs;
        }
        private string autoGenRecNo()
        {
            int a = Int32.Parse(csm.countSQL("select count(*)as'allcount' from recordno where LEFT(recNo , 2) = '" + DateTime.Now.ToString("yy") + "'", "allcount"));
            string b = DateTime.Now.ToString("yy") + String.Format("{0:D4}", (a + 1));
            return b;
        }
        private string autoAttachCode()
        {
            int a = Int32.Parse(csm.countSQL("select count(distinct attachCode) as 'allcount' from attachment", "allcount"));
            string b = "A" + DateTime.Now.ToString("yy") + String.Format("{0:D3}", (a + 1));
            return b;
        }
        private void retrieveEmployee(string a)
        {
            MySqlDataReader _reader = csm.sqlCommand("select * from employees where empid like '%" + a + "%' or empName like '%" + a + "%'").ExecuteReader();
            while (_reader.Read())
            {
                if (_reader.HasRows)
                {
                    txtEmployee.Text = _reader.GetString("empname");
                    txtPosition.Text = _reader.GetString("Position");
                    txtDept.Text = _reader.GetString("Dept");
                    txtDiv.Text = _reader.GetString("division");
                    txtUnit.Text = _reader.GetString("Unit");
                    txtSec.Text = _reader.GetString("Sec");
                    txtAreaOff.Text = _reader.GetString("Area_Assigned");
                }
                else
                {
                    txtEmployee.Text = "";
                    txtPosition.Text = "";
                    txtDept.Text = "";
                    txtDiv.Text = "";
                    txtUnit.Text = "";
                    txtSec.Text = "";
                    txtAreaOff.Text = "";
                }
            }
        }
        private bool verifyInputs()
        {
            bool returnValue = true;

            if(txtMemoNo.Text == "")
            {
                txtMemoNo.BackColor = Color.Red;
                returnValue = false;
            }
            if(txtDateNow.Text == dtReported.Value.ToString())
            {
                txtDateNow.BackColor = Color.Red;
                dtReported.CalendarForeColor = Color.Red;
                returnValue = false;
            }
            if(txtSubject.Text == "")
            {
                txtSubject.BackColor = Color.Red;
                returnValue = false;
            }
            if(txtFinding.Text == "")
            {
                txtFinding.BackColor = Color.Red;
                returnValue = false;
            }
            if(txtMngComm.Text == "")
            {
                txtMngComm.BackColor = Color.Red;
                returnValue = false;
            }
            if(txtEmployee.Text == "")
            {
                txtEmployee.BackColor = Color.Red;
            }
            if (!returnValue)
            {
                MessageBox.Show("Fill-out all RED fields","",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }
            return returnValue;
        }

        private void savetoRecord()
        {
            csm.saveInto("INSERT into (recNo, created_at, empid) values ('" + lblGenRecNo.Text +"', '"+ DateTime.Now.ToString("yyyy-MM-dd") +"', '" + empid + "')");
        }
        private void savetoPenalty()
        {
            for(int i =0; i < tblPenalty.Rows.Count; i++)
            {
                csm.saveInto("INSERT into nte_penalty (offenseNo, RecordNo) values ('"+ tblPenalty.Rows[i].Cells[0].Value.ToString() +"', '"+ lblGenRecNo.Text +"')");
            }
        }
        private void savetoNoticeToExp()
        {
            string message = csm.saveInto("INSERT INTO noticetoexplain (RecNo, memo_no, date_reported, subject, empid_to, findings, commentary) " +
                                          "VALUES ('"+lblGenRecNo.Text+ "', " +
                                                    "'"+ txtMemoNo.Text + "'," +
                                                    "'"+ dtReported.Value.ToString("yyyy-MM-dd") + "'," +
                                                    "'"+txtSubject.Text+ "'," +
                                                    "'"+txtEmployee.Text+ "'," +
                                                    "'"+ txtFinding.Text + "'," +
                                                    "'"+txtMngComm.Text+"')");

            MessageBox.Show(message, "Message", MessageBoxButtons.OK,MessageBoxIcon.Information);
        }

        #endregion

        private void NarrativeMemoForm_Load(object sender, EventArgs e)
        {

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void txtEmployee_Click(object sender, EventArgs e)
        {
            txtEmployee.SelectAll();
        }

        private void btnAttach_Click(object sender, EventArgs e)
        {
            using (AttachFile af = new AttachFile(txtAttachNo.Text, lblTitle.Text))
            {
                af.ShowDialog();
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {

        }

        private void txtEmployee_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter)
            {
                retrieveEmployee(txtEmployee.Text);
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (verifyInputs())
            {
                savetoRecord();
                savetoPenalty();
                savetoNoticeToExp();
                button1.Enabled = false;
                btnAttach.Enabled = true;
            }
        }

        private void btnPrintPreview_Click(object sender, EventArgs e)
        {
            using (prin)
        }
    }
}
