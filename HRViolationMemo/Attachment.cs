using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KOTL;
using MySql.Data.MySqlClient;

namespace HRViolationMemo
{
    public partial class Attachment : Form
    {
        public Attachment(string memo_no, string memotitle)
        {
            InitializeComponent();
            txtRecordNo.Text = memo_no;
            txtMemoTitle.Text = memotitle;
            retrieveAttachments();
        }
        CallSqlModule csm = new CallSqlModule();
        #region dev method
        private void performSave()
        {
            MemoryStream ms = new MemoryStream();
            Bitmap bm = (Bitmap)picPreview.Image;
            bm.Save(ms, ImageFormat.Jpeg);
            byte[] img = ms.ToArray();
            var _binarythingy = csm.sqlCommand("INSERT INTO attachment (file,file_name, attachCode, date_attach) VALUES (@file,'" + txtFilename.Text + "', '" + txtRecordNo.Text + "', now())");
            _binarythingy.Parameters.Add("@file", MySqlDbType.Blob);
            _binarythingy.Parameters["@file"].Value = img;
            _binarythingy.ExecuteNonQuery();
            //csm.closeSql();

            txtFilename.Text = "";
            txtFileLocation.Text = "";
            picPreview.Image = null;

            retrieveAttachments();
        }

        private void retrieveAttachments()
        {
            try
            {
                tblAttachments.Rows.Clear();
                tblAttachments.Refresh();
                MySqlDataReader reader;
                var _Result = csm.tblCommand("Select * from attachment where attachCode = '" + txtRecordNo.Text + "'");
                reader = _Result.Item2.ExecuteReader();
                int i = 0;
                while (reader.Read())
                {
                    if (!DBNull.Value.Equals(_Result.Item1.Rows[i][1]))
                    {
                        byte[] img = (byte[])_Result.Item1.Rows[i][1];
                        MemoryStream ms = new MemoryStream(img);
                        tblAttachments.Rows.Add(Image.FromStream(ms), reader.GetString("file_name"));
                        csm.disposeTableDtTable();
                    }
                    i++;
                }
                csm.closeSql();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message, "Something's not right", MessageBoxButtons.OK, MessageBoxIcon.Error); }
        }
        #endregion
        private void btnBrowse_Click(object sender, EventArgs e)
        {
            DialogResult dr = this.openFileDialog1.ShowDialog();
            if (dr == System.Windows.Forms.DialogResult.OK)
            {
                Image loadedImage = Image.FromFile(openFileDialog1.FileName);
                picPreview.Image = loadedImage;
                txtFileLocation.Text = openFileDialog1.FileName;
                txtFilename.Text = openFileDialog1.SafeFileName;
            }
        }

        private void txtFilename_TextChanged(object sender, EventArgs e)
        {
            if(txtFilename.Text != "")
            {
                btnSave.Enabled = true;
            }
            else
            {
                btnSave.Enabled = false;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            performSave();
        }

        private void tblAttachments_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            picPreview.Image = (Bitmap)tblAttachments.CurrentRow.Cells[0].Value;
        }

        private void cmsTblAttachment_Opening(object sender, CancelEventArgs e)
        {
            
        }

        private void toolDelete_Click(object sender, EventArgs e)
        {
            string a = csm.saveInto("DELETE FROM attachment WHERE attachCode = '" + txtRecordNo.Text + "' AND file_name = '" + tblAttachments.CurrentRow.Cells[1].Value.ToString() + "'");
            if ( a == "Sucessful")
            {
                MessageBox.Show("File deleted", "Delete", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                retrieveAttachments();
            }
            else
            {
                MessageBox.Show(a, "Error", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }
    }
}
