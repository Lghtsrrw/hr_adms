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
        string[] narrative = new string[12];
        string[] managementDecision = new string[12];
        public printPreview()
        {
            InitializeComponent();
        }
        public void retrieveNarrativeData(string[] narrative)
        {
            for(int i =0; i < narrative.Length; i++)
            {
                this.narrative[i] = narrative[i];
            }
        }
        private void printNarrative()
        {
            narrativeMemo1.SetParameterValue("memono", narrative[0]);
            narrativeMemo1.SetParameterValue("seriesof", narrative[3]);
            narrativeMemo1.SetParameterValue("dateNow", narrative[1]);
            narrativeMemo1.SetParameterValue("addressto", narrative[5]);
            narrativeMemo1.SetParameterValue("datereported", narrative[2]);
            narrativeMemo1.SetParameterValue("position", narrative[6]);
            narrativeMemo1.SetParameterValue("subject", narrative[4]);
            narrativeMemo1.SetParameterValue("violation", narrative[7]);
            narrativeMemo1.SetParameterValue("managementDecision", narrative[9]);
            narrativeMemo1.SetParameterValue("findings", narrative[8]);
            narrativeMemo1.SetParameterValue("attachments", narrative[10]);
            narrativeMemo1.SetParameterValue("distribution", narrative[11]);
            crystalReportViewer1.ReportSource = narrativeMemo1;
            crystalReportViewer1.Refresh();
        }

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {
            printNarrative();
        }
    }
}
