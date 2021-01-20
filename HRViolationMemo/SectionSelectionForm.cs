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


namespace HRViolationMemo
{
    public partial class SectionSelectionForm : Form
    {
        Form ssf;
        string [] thisArr;
        string user_id="";
        CallSqlModule csm = new CallSqlModule();
        public SectionSelectionForm(Form ssf, string user_id)
        {
            InitializeComponent();
            this.ssf = ssf;
            this.user_id = user_id;
            autofillSelection();
        }
        #region Dev's Method
        private void autofillSelection()
        {
            tblSection.DataSource = csm.fillTable("select distinct sec_num as 'Section No.', sec_name as 'Section Name' from offensesnpenalty").Tables[0];
        }
        #endregion


        private void tblSection_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            gbSubSection.Visible = true;
            tblSubSection.DataSource = csm.fillTable("Select concat(sec_code,' ', subsec_name)as 'Code', description as 'Description' from offensesnpenalty where sec_name = '" + tblSection.CurrentRow.Cells[1].Value.ToString() + "' and sec_code <> '5.24' and sec_code <> '5.22' and sec_code <> '5.26' ").Tables[0];
        }

        private void tblSubSection_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string a = tblSubSection.CurrentRow.Cells[0].Value.ToString();
            string b = csm.countSQL("select id from offensesnpenalty where concat(sec_code,' ', subsec_name) = '"+ a +"'", "id");
            tblSelectedList.Rows.Add(b,a);
            //selectedSection[selectedSection.Length + 1] = a;
            tblSubSection.Rows.RemoveAt(tblSubSection.CurrentRow.Index);
        }

        private void tblSelectedList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove this?", "Remove", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                tblSelectedList.Rows.RemoveAt(tblSelectedList.CurrentCell.RowIndex);
            }
        }

        private void btnCreateMemo_Click(object sender, EventArgs e)
        {
            thisArr = new string[tblSelectedList.Rows.Count];
            for(int i =0; i < tblSelectedList.Rows.Count; i++)
            {
                thisArr[i] = tblSelectedList.Rows[i].Cells[1].Value.ToString();
            }

            using (NarrativeMemoForm nmf = new NarrativeMemoForm(user_id))
            {
                foreach (string i in thisArr) {
                    string _id = csm.countSQL("select id from offensesnpenalty where concat(sec_code,' ',subsec_name) = '" + i + "'", "id");
                    string _penalty = csm.countSQL("select concat('SECTION ',sec_num, ' ',sec_name,', Paragraph ', sec_code,' ',description ) as penalty from offensesnpenalty where concat(sec_code,' ',subsec_name) = '" + i + "'", "penalty");
                    nmf.tblPenalty.Rows.Add(_id,_penalty);
                }
                this.Dispose();
                nmf.ShowDialog();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (TemplateMemoForm tmf = new TemplateMemoForm())
            {
                tmf.ShowDialog();
            }
        }

        private void tblSelectedList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
