using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HRViolationMemo
{
    public partial class TemplateMemoForm : Form
    {
        Form tmf;
        string user_id = "";
        public TemplateMemoForm(Form tmf, string user_id)
        {
            InitializeComponent();
            this.tmf = tmf;
            this.user_id = user_id;
        }

        private void btnNotice_Click(object sender, EventArgs e)
        {
            using (SectionSelectionForm ssf = new SectionSelectionForm(tmf, user_id))
            {
                this.Dispose();
                ssf.ShowDialog();
            }
        }

        private void btnViewMemo_Click(object sender, EventArgs e)
        {
            using (maintenance m = new maintenance())
            {
                m.ShowDialog();
            }
        }

        private void btnCreateMemo_Click(object sender, EventArgs e)
        {
            using (maintenance m = new maintenance())
            {
                m.ShowDialog();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (maintenance m = new maintenance())
            {
                m.ShowDialog();
            }
        }
    }
}
