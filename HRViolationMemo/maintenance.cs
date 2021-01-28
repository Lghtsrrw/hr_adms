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
    public partial class maintenance : Form
    {
        public maintenance()
        {
            InitializeComponent();
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(label1.ForeColor == Color.Red)
            {
                label1.ForeColor = Color.Black;
            }
            else
            {
                label1.ForeColor = Color.Red;
            }
            
        }
    }
}
