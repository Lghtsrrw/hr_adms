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
    public partial class ManagementDecisionsForm : Form
    {
        HRADMS hr = new HRADMS();
        string empid;
        public ManagementDecisionsForm(string basememo, string empid)
        {
            InitializeComponent();
            txtMemoNo.Text = hr.autoGenRecNo();
            txtBase.Text = basememo;
            this.empid = empid;
        }
    }
}
