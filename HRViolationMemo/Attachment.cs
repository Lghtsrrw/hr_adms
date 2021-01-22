using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HRViolationMemo
{
    public partial class Attachment : Form
    {
        public Attachment()
        {
            InitializeComponent();
        }

        private void btnBrowse_Click(object sender, EventArgs e)
        {
            DialogResult dr = this.openFileDialog1.ShowDialog();
            if (dr == System.Windows.Forms.DialogResult.OK)
            {
                Image loadedImage = Image.FromFile(openFileDialog1.FileName);
                picPreview.Image = loadedImage;
                picPreview.SizeMode = PictureBoxSizeMode.Zoom;

                MemoryStream ms = new MemoryStream();
                loadedImage.Save(ms, loadedImage.RawFormat);
                byte[] img = ms.ToArray();
            }
        }
    }
}
