namespace HRViolationMemo
{
    partial class SectionSelectionForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SectionSelectionForm));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tblSection = new System.Windows.Forms.DataGridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnCreateMemo = new System.Windows.Forms.Button();
            this.gbSubSection = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tblSubSection = new System.Windows.Forms.DataGridView();
            this.tblSelectedList = new System.Windows.Forms.DataGridView();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tblSection)).BeginInit();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.gbSubSection.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tblSubSection)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblSelectedList)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.tblSection);
            this.groupBox1.Location = new System.Drawing.Point(12, 70);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(643, 242);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Select section";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 8F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(5, 221);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(191, 16);
            this.label1.TabIndex = 11;
            this.label1.Text = "double-click to display description";
            // 
            // tblSection
            // 
            this.tblSection.AllowUserToAddRows = false;
            this.tblSection.AllowUserToDeleteRows = false;
            this.tblSection.AllowUserToOrderColumns = true;
            this.tblSection.AllowUserToResizeColumns = false;
            this.tblSection.AllowUserToResizeRows = false;
            this.tblSection.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.tblSection.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.tblSection.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tblSection.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tblSection.Location = new System.Drawing.Point(3, 20);
            this.tblSection.Name = "tblSection";
            this.tblSection.ReadOnly = true;
            this.tblSection.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.tblSection.Size = new System.Drawing.Size(637, 219);
            this.tblSection.TabIndex = 12;
            this.tblSection.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tblSection_CellDoubleClick);
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.PowderBlue;
            this.panel3.Controls.Add(this.pictureBox1);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(937, 57);
            this.panel3.TabIndex = 6;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.BackgroundImage")));
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pictureBox1.Location = new System.Drawing.Point(15, 10);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(41, 37);
            this.pictureBox1.TabIndex = 11;
            this.pictureBox1.TabStop = false;
            // 
            // btnCreateMemo
            // 
            this.btnCreateMemo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnCreateMemo.FlatAppearance.BorderColor = System.Drawing.Color.Green;
            this.btnCreateMemo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCreateMemo.Font = new System.Drawing.Font("Century Gothic", 10F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCreateMemo.ForeColor = System.Drawing.Color.Green;
            this.btnCreateMemo.Location = new System.Drawing.Point(661, 526);
            this.btnCreateMemo.Name = "btnCreateMemo";
            this.btnCreateMemo.Size = new System.Drawing.Size(261, 34);
            this.btnCreateMemo.TabIndex = 7;
            this.btnCreateMemo.Text = "CREATE MEMO";
            this.btnCreateMemo.UseVisualStyleBackColor = false;
            this.btnCreateMemo.Click += new System.EventHandler(this.btnCreateMemo_Click);
            // 
            // gbSubSection
            // 
            this.gbSubSection.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.gbSubSection.Controls.Add(this.label2);
            this.gbSubSection.Controls.Add(this.tblSubSection);
            this.gbSubSection.Location = new System.Drawing.Point(12, 315);
            this.gbSubSection.Name = "gbSubSection";
            this.gbSubSection.Size = new System.Drawing.Size(643, 245);
            this.gbSubSection.TabIndex = 9;
            this.gbSubSection.TabStop = false;
            this.gbSubSection.Text = "For narrative memo";
            this.gbSubSection.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 8F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(5, 224);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 16);
            this.label2.TabIndex = 13;
            this.label2.Text = "double-click to select";
            // 
            // tblSubSection
            // 
            this.tblSubSection.AllowUserToAddRows = false;
            this.tblSubSection.AllowUserToDeleteRows = false;
            this.tblSubSection.AllowUserToOrderColumns = true;
            this.tblSubSection.AllowUserToResizeColumns = false;
            this.tblSubSection.AllowUserToResizeRows = false;
            this.tblSubSection.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells;
            this.tblSubSection.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.tblSubSection.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tblSubSection.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tblSubSection.Location = new System.Drawing.Point(3, 20);
            this.tblSubSection.Name = "tblSubSection";
            this.tblSubSection.ReadOnly = true;
            this.tblSubSection.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.tblSubSection.Size = new System.Drawing.Size(637, 222);
            this.tblSubSection.TabIndex = 12;
            this.tblSubSection.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tblSubSection_CellDoubleClick);
            // 
            // tblSelectedList
            // 
            this.tblSelectedList.AllowUserToAddRows = false;
            this.tblSelectedList.AllowUserToResizeColumns = false;
            this.tblSelectedList.AllowUserToResizeRows = false;
            this.tblSelectedList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.tblSelectedList.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.tblSelectedList.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.tblSelectedList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.tblSelectedList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tblSelectedList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column2,
            this.Column1});
            this.tblSelectedList.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.tblSelectedList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tblSelectedList.Location = new System.Drawing.Point(3, 20);
            this.tblSelectedList.Name = "tblSelectedList";
            this.tblSelectedList.ReadOnly = true;
            this.tblSelectedList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.tblSelectedList.Size = new System.Drawing.Size(258, 427);
            this.tblSelectedList.TabIndex = 12;
            this.tblSelectedList.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tblSelectedList_CellContentClick);
            this.tblSelectedList.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tblSelectedList_CellDoubleClick);
            // 
            // Column2
            // 
            this.Column2.HeaderText = "No";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Selected";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.tblSelectedList);
            this.groupBox2.Location = new System.Drawing.Point(661, 70);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(264, 450);
            this.groupBox2.TabIndex = 13;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Selected list";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 8F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(5, 428);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(133, 16);
            this.label3.TabIndex = 14;
            this.label3.Text = "double-click to remove";
            // 
            // SectionSelectionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ClientSize = new System.Drawing.Size(937, 571);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.gbSubSection);
            this.Controls.Add(this.btnCreateMemo);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("Century Gothic", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "SectionSelectionForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Create Memo";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tblSection)).EndInit();
            this.panel3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.gbSubSection.ResumeLayout(false);
            this.gbSubSection.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tblSubSection)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblSelectedList)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridView tblSection;
        private System.Windows.Forms.Button btnCreateMemo;
        private System.Windows.Forms.GroupBox gbSubSection;
        private System.Windows.Forms.DataGridView tblSubSection;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView tblSelectedList;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
    }
}