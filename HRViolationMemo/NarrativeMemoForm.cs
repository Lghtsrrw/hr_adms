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
        HRADMS hr = new HRADMS();
        string empid = "", attachment = "", section = "", paragraph = "";
        public NarrativeMemoForm(string empid)
        {
            InitializeComponent();
            this.empid = empid;
            txtDateNow.Text = DateTime.Now.ToShortDateString();
            autoCompleteEmployee();
            lblGenRecNo.Text = hr.autoGenRecNo();
            lblUser.Text = csm.countSQL("select empname from employees where empid = '"+ empid+"'","empname").ToUpper();
            btnReview.Enabled = verifyReview(lblGenRecNo.Text);
        }

        #region Dev Method
        

        private string[] fillNarrativeValue()
        {
            string recepients = "", position = "";
            MySqlDataReader _reader = csm.sqlCommand("Select empName, Position from employees e inner join address_to ad on e.empid = ad.empid where ad.memo_no = '"+lblGenRecNo.Text+"'").ExecuteReader();
            while (_reader.Read())
            {
                recepients += _reader.GetString("empName") + "\n";
                position += _reader.GetString("Position") + "\n";
            }

            string[] narrative = new string[13];

            narrative[0] = lblGenRecNo.Text;
            narrative[1] = DateTime.Now.ToString("MMMM dd, yyyy");
            narrative[2] = dtReported.Value.ToString("MMMM dd, yyyy");
            narrative[3] = DateTime.Now.ToString("yyyy");
            narrative[4] = txtSubject.Text.ToUpper();
            narrative[5] = recepients.ToUpper();
            narrative[6] = position.ToUpper();
            narrative[7] = section;
            narrative[8] = txtFinding.Text;
            narrative[9] = txtMngComm.Text;
            narrative[10] = attachment;
            narrative[11] = "Personnel Concerned, Concerned Department Manager, Concerned Division Chief/ Supervisor, HRD/PSS 201 File";
            narrative[12] = paragraph;

            return narrative;
        }

        private void fillRecipients(string a)
        {
            bsRecepients.Clear();
            MySqlDataReader _reader = csm.sqlCommand("select empName, Position from employees e inner join address_to at on e.empid = at.empid where at.memo_no = '"+a+"'").ExecuteReader();
            while (_reader.Read())
            {
                recepients sr = new recepients()
                {
                    employee_name = _reader.GetString("empName"),
                    position = _reader.GetString("Position"),
                };
                bsRecepients.Add(sr);
                bsRecepients.MoveLast();
            }
            csm.closeSql();
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
                section += "<b>" + tblPenalty.Rows[i].Cells[1].Value.ToString() + ": </b> &quot;" + tblPenalty.Rows[i].Cells[2].Value.ToString() + "&quot;<br>";
                paragraph += tblPenalty.Rows[i].Cells[2].Value.ToString() + "\n";
            }

            fillRecipients(lblGenRecNo.Text);
            using (printPreview pp = new printPreview(bsRecepients.DataSource as List<recepients>))
            {
                pp.retrieveNarrativeData(fillNarrativeValue());
                pp.ShowDialog();
            }

            attachment = "";
            section = "";
            paragraph = "";
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

            if(dtReported.Value.ToString() == "9/9/9998")
            {
                lblReported.ForeColor = Color.Red;
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
            if(tblEmpList.RowCount == 0)
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

        private void addtoAddressTo()
        {
            string empID = csm.countSQL("select empid from employees where empName = '" + txtEmployee.Text + "'", "empid");
            tblEmpList.Rows.Add(empID);
            clearEmp();

            string message = csm.saveInto("INSERT INTO address_to VALUES ('"+lblGenRecNo.Text+"', '"+ empID +"') ");
        }
        private void removefromAddressTo()
        {
            string message = csm.saveInto("delete FROM address_to WHERE memo_no = '"+lblGenRecNo.Text+"' AND empid = '"+ tblEmpList.CurrentRow.Cells[0].Value.ToString() +"'");
            MessageBox.Show(message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);

            tblEmpList.Rows.RemoveAt(tblEmpList.CurrentRow.Index);
        }
        private void retrieveAddressTo(string memo)
        {
            MySqlDataReader _reader = csm.sqlCommand("Select * from address_to where memo_no = '"+memo+"'").ExecuteReader();
            while (_reader.Read())
            {
                tblEmpList.Rows.Add(_reader.GetString("empid"));
            }
        }

        public void addtoPenalty(string penalty, string memono)
        {
            csm.saveInto("INSERT into nte_penalty (offenseNo, memo_no) values ('" + penalty + "', '" + memono + "')");
        }
        private void removefromPenalty()
        {
            string message = csm.saveInto("delete FROM nte_penalty WHERE memo_no = '" + lblGenRecNo.Text + "' AND offenseNo = '" + tblPenalty.CurrentRow.Cells[0].Value.ToString() + "'");
            tblPenalty.Rows.RemoveAt(tblPenalty.CurrentCell.RowIndex);
        }
        private void retrievePenalty(string a, DataGridView dgv)
        {
            MySqlDataReader _Reader = csm.sqlCommand("SELECT ntep.offenseNo,concat('Paragraph ', sec_code,' ',description ) as paragraph, concat('SECTION ',sec_num,' ',sec_name) as section FROM nte_penalty ntep INNER JOIN offensesnpenalty onp ON ntep.offenseNo = onp.id WHERE memo_no = '" + a + "'").ExecuteReader();
            while (_Reader.Read())
            {
                dgv.Rows.Add(_Reader.GetString("offenseNo"), _Reader.GetString("section"), _Reader.GetString("paragraph"));
            }
        }


        private void fillTable(string memono)
        {
            bsRecepients.Clear();
            MySqlDataReader _reader = csm.sqlCommand("select empName, Position from employees e inner join address_to at on e.empid = at.empid where at.memo_no = '"+ memono +"'").ExecuteReader();
            while (_reader.Read())
            {
                recepients sr = new recepients()
                {
                    employee_name = _reader.GetString("empName"),
                    position = _reader.GetString("Position")
                };
                bsRecepients.Add(sr);
                bsRecepients.MoveLast();
            }
            csm.closeSql();
        }
        #endregion

        private void NarrativeMemoForm_Load(object sender, EventArgs e)
        {
            retrieveAddressTo(lblGenRecNo.Text);
            retrievePenalty(lblGenRecNo.Text, tblPenalty);

            bsRecepients.DataSource = new List<recepients>();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to exit without saving?", "Message", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                this.Dispose();
            }
            else
            {
                if (verifyInputs())
                {
                    if (verifyDrafts())
                    {
                        updatetoNoticeToExp();
                    }
                    else
                    {
                        savetoNoticeToExp();
                        savetoRecord();
                        savetoStatus("Draft");
                    }
                }
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
                    savetoNoticeToExp();
                    savetoRecord();
                    savetoStatus("Draft");
                }
            }
        }

        private void selectParagraphToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (SectionSelectionForm ssf = new SectionSelectionForm(tblPenalty, empid, lblGenRecNo.Text))
            {
                ssf.ShowDialog();
            }
        }

        private void deleteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove this?", "Remove", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                removefromPenalty();
            }
        }

        private void btnAddEmp_Click(object sender, EventArgs e)
        {
            if (txtEmployee.Text == "")
            {
                MessageBox.Show("No Entry", "Message", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
            else
            {
                DialogResult dialogResult = MessageBox.Show("Are you sure you want to Add this to the Memo recepient?", "Add", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    addtoAddressTo();
                }
            }
            
        }
        private void clearEmp()
        {
            txtEmployee.Text = "";
            txtPosition.Text = "";
            txtDept.Text = "";
            txtDiv.Text = "";
            txtSec.Text = "";
            txtAreaOff.Text = "";
            txtUnit.Text = "";
        }
        private void tblEmpList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove this?", "Remove", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                removefromAddressTo();
            }
        }

        private void tblEmpList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void removeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove this?", "Remove", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                removefromAddressTo();
            }
        }

        private void checkBox4_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void tblPenalty_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
        {
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
