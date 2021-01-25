using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KOTL;
using MySql.Data.MySqlClient;

namespace HRViolationMemo
{
    public partial class AttachFile : Form
    {
        public AttachFile(string recordno, string memotitle)
        {
            InitializeComponent();
            txtRecordNo.Text = recordno;
            txtMemoTitle.Text = memotitle;
        }
        CallSqlModule csm = new CallSqlModule();

        #region dev method
        private void performSave()
        {
            //for (int i = 0; i < dataGridView1.Rows.Count; i++)
            //{
            //    MemoryStream ms = new MemoryStream();
            //    Bitmap bm = (Bitmap)dataGridView1.Rows[i].Cells[0].Value;
            //    bm.Save(ms, ImageFormat.Png);
            //    byte[] img = ms.ToArray();
            //    var _binarythingy = csm.sqlCommand("INSERT INTO attachment (file,file_name, attachCode, date_attach) VALUES (@file,'" + dataGridView1.Rows[i].Cells[1].Value.ToString() + "', '" + txtRecordNo.Text + "', now())");
            //    _binarythingy.Parameters.Add("@file", MySqlDbType.Blob);
            //    _binarythingy.Parameters["@file"].Value = img;
            //    _binarythingy.ExecuteNonQuery();
            //    csm.closeSql();
            //}

            //MessageBox.Show("Save successfully!", "Saving", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //this.Dispose();
        }

        private void retrieveData()
        {
            try
            {
                MySqlDataReader reader;
                var _Result = csm.tblCommand("Select * from attachment where attachCode = '" + txtRecordNo.Text + "'");
                reader = _Result.Item2.ExecuteReader();
                while (reader.Read())
                {
                    if (!DBNull.Value.Equals(_Result.Item1.Rows[0][1]))
                    {
                        byte[] img = (byte[])_Result.Item1.Rows[0][1];
                        MemoryStream ms = new MemoryStream(img);
                        tblLiveData.Rows.Add(Image.FromStream(ms), reader.GetString("file_name"));
                        csm.disposeTableDtTable();
                    }
                }
                csm.closeSql();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message, "Something's not right", MessageBoxButtons.OK, MessageBoxIcon.Error); }
        }
        #endregion
        private void btnBrowse_Click(object sender, EventArgs e)
        {
            //DialogResult dr = this.openFileDialog1.ShowDialog();
            //if (dr == System.Windows.Forms.DialogResult.OK)
            //{
            //    // Read the files
            //    foreach (String file in openFileDialog1.FileNames)
            //    {
            //        // Create a PictureBox.
            //        try
            //        {
            //            PictureBox pb = new PictureBox();
            //            Image loadedImage = Image.FromFile();
            //            pb.Height = 100;
            //            pb.Width = 100;
            //            pb.Image = loadedImage;
            //            pb.SizeMode = PictureBoxSizeMode.Zoom;
            //            dataGridView1.Rows.Add(loadedImage, file);

            //            MemoryStream ms = new MemoryStream();
            //            loadedImage.Save(ms, loadedImage.RawFormat);
            //            byte[] img = ms.ToArray();
            //            //dataGridView1.Rows.Add(img, file);
            //        }
            //        catch (SecurityException ex)
            //        {
            //            // The user lacks appropriate permissions to read files, discover paths, etc.
            //            MessageBox.Show("Security error. Please contact your administrator for details.\n\n" +
            //                "Error message: " + ex.Message + "\n\n" +
            //                "Details (send to Support):\n\n" + ex.StackTrace
            //            );
            //        }
            //        catch (Exception ex)
            //        {
            //            // Could not load the image - probably related to Windows file system permissions.
            //            MessageBox.Show("Cannot display the image: " + file.Substring(file.LastIndexOf('\\'))
            //                + ". You may not have permission to read the file, or " +
            //                "it may be corrupt.\n\nReported error: " + ex.Message);
            //        }

            //        if (dataGridView1.Rows.Count != 0)
            //        {
            //            btnSAve.Enabled = true;
            //        }
            //        else
            //        {
            //            btnSAve.Enabled = false;
            //        }
            //    }
            //}

        }


        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {

        }

        private void dataGridView1_CellStateChanged(object sender, DataGridViewCellStateChangedEventArgs e)
        {
            
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove this?", "Remove", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                tblLiveData.Rows.RemoveAt(tblLiveData.CurrentCell.RowIndex);
            }

            if (tblLiveData.Rows.Count != 0)
            {
                btnSAve.Enabled = true;
            }
            else
            {
                btnSAve.Enabled = false;
            }
        }

        private void btnSAve_Click(object sender, EventArgs e)
        {
            performSave();
        }

        private void AttachFile_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if(textBox2.Text != "")
            {
                textBox2.Enabled = true;
            }
            else
            {
                textBox2.Enabled = false;
            }
        }
    }
}
