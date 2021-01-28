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
    public partial class printPreview : Form
    {
        string memono, datenow, datereported, seriesof, subject, employee, position, violation, finding, mngcomm, attach, dist;
        public printPreview(string memo, string datenow, string datereported, string seriesof, string subject, string employee, string position, string violation, string finding, string mngcomm, string attach, string dist)
        {
            InitializeComponent();
            memono = memo;
            this.datenow = datenow;
            this.datereported = datereported;
            this.seriesof = seriesof;
            this.subject = subject;
            this.employee = employee;
            this.position = position;
            this.violation = violation;
            this.finding = finding;
            this.mngcomm = mngcomm;
            this.attach = attach;
            this.dist = dist;
        }

        private void printNarrative()
        {
            narrativeMemo1.SetParameterValue("memono", memono);
            narrativeMemo1.SetParameterValue("seriesof", seriesof);
            narrativeMemo1.SetParameterValue("dateNow", datenow);
            narrativeMemo1.SetParameterValue("addressto", employee);
            narrativeMemo1.SetParameterValue("datereported", datereported);
            narrativeMemo1.SetParameterValue("position", position);
            narrativeMemo1.SetParameterValue("subject", subject);
            narrativeMemo1.SetParameterValue("violation", violation);
            narrativeMemo1.SetParameterValue("managementDecision", mngcomm);
            narrativeMemo1.SetParameterValue("findings", finding);
            narrativeMemo1.SetParameterValue("attachments", attach);
            narrativeMemo1.SetParameterValue("distribution", dist);
            crystalReportViewer1.ReportSource = narrativeMemo1;
            crystalReportViewer1.Refresh();
        }

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {
            printNarrative();
        }
    }
}
