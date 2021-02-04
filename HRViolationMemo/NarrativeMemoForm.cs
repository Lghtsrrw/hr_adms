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
        string empid = "", attachment = "", thisviolation = "";
        public NarrativeMemoForm(string empid)
        {
            InitializeComponent();
            this.empid = empid;
            txtDateNow.Text = DateTime.Now.ToShortDateString();
            autoCompleteEmployee();
            lblGenRecNo.Text = autoGenRecNo();
            lblUser.Text = csm.countSQL("select empname from employees where empid = '"+ empid+"'","empname").ToUpper();
            
            btnReview.Enabled = verifyReview(lblGenRecNo.Text);
        }

        #region Dev Method
        public void subForNoticetoExplain(string a,DataGridView dgv)
        {
            MySqlDataReader _Reader = csm.sqlCommand("SELECT ntep.offenseNo,concat('SECTION ',sec_num, ' ',sec_name,', Paragraph ', sec_code,' ',description ) as penalty FROM nte_penalty ntep INNER JOIN offensesnpenalty onp ON ntep.offenseNo = onp.id WHERE memo_no = '" + a + "'").ExecuteReader();
            while (_Reader.Read())
            {
                dgv.Rows.Add(_Reader.GetString("offenseNo"), _Reader.GetString("penalty"));
            }
        }

        private string[] fillNarrativeValue()
        {
            string[] narrative = new string[12];

            narrative[0] = lblGenRecNo.Text;
            narrative[1] = DateTime.Now.ToString("MMMM dd, yyyy");
            narrative[2] = dtReported.Value.ToString("MMMM dd, yyyy");
            narrative[3] = DateTime.Now.ToString("yyyy");
            narrative[4] = txtSubject.Text.ToUpper();
            narrative[5] = txtEmployee.Text.ToUpper();
            narrative[6] = txtPosition.Text.ToUpper();
            narrative[7] = thisviolation;
            narrative[8] = txtFinding.Text;
            narrative[9] = txtMngComm.Text;
            narrative[10] = attachment;
            narrative[11] = "Personnel Concerned, Concerned Department Manager, Concerned Division Chief/ Supervisor, HRD/PSS 201 File";

            return narrative;
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
        private bool verifyReview(string a)
        {
            return (csm.countSQL("select count(memo_no)as 'allcount' from memo_status where memo_no = '" + a + "' and status = 'Review'", "allcount") != "1")? true : false;
        }
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
            int a = Int32.Parse(csm.countSQL("select count(memo_no)as'allcount' from record where LEFT(memo_no , 2) = '" + DateTime.Now.ToString("yy") + "'", "allcount"));
            string b = DateTime.Now.ToString("yy") + String.Format("{0:D4}", (a + 1));
            return b;
        }
        private string autoAttachCode()
        {
            int a = Int32.Parse(csm.countSQL("select count(distinct attachCode) as 'allcount' from attachment", "allcount"));
            string b = "A" + DateTime.Now.ToString("yy") + String.Format("{0:D3}", (a + 1));
            return b;
        }
        public void retrieveEmployee(string a)
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
                returnValue = false;
            }
            if (!returnValue)
            {
                MessageBox.Show("Fill-out all RED fields","",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }
            return returnValue;
        }
        private bool verifyDrafts()
        {
            bool valReturn = true;
            if (csm.countSQL("select count(*)as 'all' from noticetoexplain where memo_no = '"+ lblGenRecNo.Text+"'","all") != "1")
            {
                valReturn = false;
                MessageBox.Show("You haven't saved this to draft yet.","Message", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            return valReturn;
        }

        private void savetoStatus(string status)
        {
            csm.saveInto("INSERT INTO memo_status (memo_no, status, date_updated) values ('" + lblGenRecNo.Text + "', '"+status+"', now())");
        }
        private void savetoRecord()
        {
            csm.saveInto("INSERT into record (memo_no, title, date_created, created_by) values ('" + lblGenRecNo.Text + "', 'Notice to Explain','" + DateTime.Now.ToString("yyyy-MM-dd") + "', '" + empid + "')");
        }
        private void savetoPenalty()
        {
            for(int i =0; i < tblPenalty.Rows.Count; i++)
            {
                csm.saveInto("INSERT into nte_penalty (offenseNo, memo_no) values ('"+ tblPenalty.Rows[i].Cells[0].Value.ToString() +"', '"+ lblGenRecNo.Text +"')");
            }
        }
        private void savetoNoticeToExp()
        {
            string message = csm.saveInto("INSERT INTO noticetoexplain (memo_no, date_reported, subject, empid_to, findings, commentary) " +
                                          "VALUES ('" + lblGenRecNo.Text + "', " +
                                                    "'" + dtReported.Value.ToString("yyyy-MM-dd") + "'," +
                                                    "'" + txtSubject.Text + "'," +
                                                    "'" + txtEmployee.Text + "'," +
                                                    "'" + txtFinding.Text + "'," +
                                                    "'" + txtMngComm.Text + "')");
            MessageBox.Show(message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        private void updatetoNoticeToExp()
        {
            string message = csm.saveInto("UPDATE noticetoexplain SET findings = '" + txtFinding.Text+ "', commentary = '" + txtMngComm.Text +"' WHERE memo_no = '"+lblGenRecNo.Text+"'");
            MessageBox.Show(message, "Message Update", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        #endregion

        private void NarrativeMemoForm_Load(object sender, EventArgs e)
        {

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to exit without saving?", "Message", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                this.Dispose();
            }
        }

        private void txtEmployee_Click(object sender, EventArgs e)
        {
            txtEmployee.SelectAll();
        }

        private void btnAttach_Click(object sender, EventArgs e)
        {
            using (Attachment af = new Attachment(lblGenRecNo.Text, lblTitle.Text))
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
                if (verifyDrafts())
                {
                    updatetoNoticeToExp();
                }
                else
                {
                    savetoPenalty();
                    savetoNoticeToExp();
                    savetoRecord();
                    savetoStatus("Draft");
                }
            }
        }

        private void btnPrintPreview_Click(object sender, EventArgs e)
        {
            printPreview();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Submit now?\n\t After submitting this form will be closed", "Message", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                if (verifyDrafts())
                {
                    updatetoNoticeToExp();
                    savetoStatus("Review");
                    this.Dispose();
                }
            }
        }
    }
}
