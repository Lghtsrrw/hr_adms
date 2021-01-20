using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using KOTL;

namespace HRViolationMemo
{
    public partial class LoginForm : Form
    {
        CallSqlModule csm = new CallSqlModule();

        public LoginForm()
        {
            InitializeComponent();
            this.Show();
        }

        private void performLogin()
        {
            try
            {
                MySqlDataReader reader = csm.sqlCommand("SELECT empName as 'user_name', u.empid, count(*)as 'all' from user u inner join employees e on u.empid = e.empid where username = '" + txtUsername.Text + "' and password = '" + txtPassword.Text + "'").ExecuteReader();
                while (reader.Read())
                {
                    if (reader.GetString("all") == "1")
                    {
                        using (Menu menuForm = new Menu(this, reader.GetString("user_name").ToUpper(), reader.GetString("empid")))
                        {
                            txtPassword.Text = "";
                            txtUsername.Text = "";
                            this.Hide();
                            menuForm.ShowDialog();
                        }
                    }
                    else
                    {
                        txtUsername.Text = "";
                        txtPassword.Text = "";
                        MessageBox.Show("Invalid username or password.", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    }
                }
            }
            catch(Exception e)
            {
                MessageBox.Show(e.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void btnLogin_Click(object sender, EventArgs e)
        {
            performLogin();
        }
    }
}
