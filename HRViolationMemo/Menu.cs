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
    public partial class Menu : Form
    {
        Form lf;
        string user_id = "";
        public Menu(Form lf, string user_name,string user_id)
        {
            InitializeComponent();
            this.lf = lf;
            this.user_id = user_id;
            lblUser.Text = user_name;
        }

        private void label1_Click(object sender, EventArgs e)
        {

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

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnCreateMemo_Click(object sender, EventArgs e)
        {
            using (TemplateMemoForm tmf = new TemplateMemoForm(this, user_id))
            {
                tmf.ShowDialog();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }
    }
}
