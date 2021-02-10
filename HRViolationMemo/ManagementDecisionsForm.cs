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

        public string[] fillManagementDecisionValue()
        {
            string[] narrative = new string[12];

            narrative[0] = DateTime.Now.ToShortDateString();
            narrative[1] = txtMemoNo.Text;
            narrative[2] = DateTime.Now.ToString("yyyy");
            narrative[3] = dtHRReceive.Value.ToString("yyyy");
            narrative[4] = dtHRReceive.Value.ToString("yyyy");

            return narrative;
        }
        private void savetoPenalty()
        {
            for (int i = 0; i < tblPenalty.Rows.Count; i++)
            {
                csm.saveInto("INSERT into nte_penalty (offenseNo, memo_no) values ('" + tblPenalty.Rows[i].Cells[0].Value.ToString() + "', '" + txtMemoNo.Text + "')");
            }
        }

        private void submitToManagementDecision()
        {
            string message = csm.saveInto("INSERT INTO management_decision" +
                                          "VALUES ('" + txtMemoNo.Text + "', " +
                                                    "'" + txtBase.Text + "'," +
                                                    "'" + dtBaseMemoDateReceive.Value.ToShortDateString() + "'," +
                                                    "'" + dtHRReceive.Value.ToShortDateString() + "'," +
                                                    "'" + txtExplanation.Text + "'," +
                                                    "'" + txtMngComm.Text + "'," +
                                                    "'" + txtPenalty.Text + "')");
            MessageBox.Show(message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void updateManagementDecisionDraft()
        {
            string message = csm.saveInto("UPDATE management_decision" +
                                          "SET base_receive = '" + dtBaseMemoDateReceive.Value.ToShortDateString() + "'," +
                                          " explanation_receive = '" + dtHRReceive.Value.ToShortDateString() + "'," +
                                          " explanation_cited = '" + txtExplanation.Text + "'," +
                                          " analysis_comment_cited = '" + txtMngComm.Text + "'," +
                                          " decision_cited = '" + txtPenalty.Text + "' " +
                                          "WHERE memo_no = '" + txtMemoNo.Text + "'");
            MessageBox.Show(message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        public void fillNoticetoExplain(string memono, string datecreated)
        {
            txtBase.Text = memono;
            txtBaseDateCreated.Text = datecreated;
        }
        public void printPreview()
        {
            MySqlDataReader _reader = csm.sqlCommand("Select file_name from attachment where attachCode = '" + txtMemoNo.Text + "'").ExecuteReader();

            while (_reader.Read())
            {
                attachment += _reader.GetString("file_name") + ", ";
            }
            for (int i = 0; i < tblPenalty.Rows.Count; i++)
            {
                thisviolation += tblPenalty.Rows[i].Cells[1].Value.ToString() + "\n";
            }
            using (printPreview pp = new printPreview(bsReceipients.DataSource as List<recepients>))
            {
                pp.retrieveNarrativeData(fillManagementDecisionValue());
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
            }else
            {

            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            using (Attachment af = new Attachment(txtMemoNo.Text, lblTitle.Text))
            {
                af.ShowDialog();
            }
        }

        private void selectParagraphToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using(SectionSelectionForm ssf = new SectionSelectionForm(tblPenalty, empid, txtMemoNo.Text))
            {
                ssf.ShowDialog();
            }
        }

        private void removeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove this?", "Remove", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                tblPenalty.Rows.RemoveAt(tblPenalty.CurrentCell.RowIndex);
            }
        }

        private void groupBox6_Enter(object sender, EventArgs e)
        {

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
