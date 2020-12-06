using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security.Cryptography;
using System.Data.SqlClient;

namespace QuanLyCongTyDuLich
{
    public partial class DangKy : Form
    {   
        const string Pass_code = "2812199920032000";
        string cStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
        public DangKy()
        {
            InitializeComponent();
        }
        
        public string Encrypt(string mahoa)
        {
            bool bangbam = true;
            Byte[] manghoa;
            Byte[] mahoamang = UTF8Encoding.UTF8.GetBytes(mahoa);

            if (bangbam == true)
            {
                MD5CryptoServiceProvider MD5 = new MD5CryptoServiceProvider();
                manghoa = MD5.ComputeHash(UTF8Encoding.UTF8.GetBytes(Pass_code));
            }
            else
            {
                manghoa = UTF8Encoding.UTF8.GetBytes(Pass_code);
            }

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = manghoa;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cryptoTransform = tdes.CreateEncryptor();
            Byte[] ngaunhien = cryptoTransform.TransformFinalBlock(mahoamang, 0, mahoamang.Length);
            string thucnghiem = Convert.ToBase64String(ngaunhien, 0, ngaunhien.Length);
            return thucnghiem;
        }

        private void SignUp_Button_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Admin_acc.Text) || string.IsNullOrWhiteSpace(Admin_Pass.Text))
            {
                if (string.IsNullOrWhiteSpace(Admin_acc.Text))
                {
                    Admin_acc.BackColor = Color.Red;
                }
                if (string.IsNullOrWhiteSpace(Admin_Pass.Text))
                {
                    Admin_Pass.BackColor = Color.Red;
                }

                MessageBox.Show("Please fill in blankspace", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Admin_acc.BackColor = Color.Red;
                Admin_Pass.BackColor = Color.Red;
            }
            else if (Admin_acc.Text.Length <= 4 || Admin_Pass.Text.Length <= 6)
            {
                if (Admin_acc.Text.Length <= 4)
                {
                    Admin_acc.BackColor = Color.Red;
                    MessageBox.Show("Your Name Just Fill In Too Short \n Please Try Again", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Admin_acc.BackColor = Color.White;
                    Admin_acc.Text = string.Empty;
                }
                if (Admin_Pass.Text.Length <= 6)
                {
                    Admin_Pass.BackColor = Color.Red;
                    MessageBox.Show("Your Password Which You Just Fill In Too Short \n We Required You Should Set The Password Which Have More And More Characters \n Thanks You.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Admin_Pass.BackColor = Color.White;
                    Admin_Pass.Text = string.Empty;
                }
            }
            else
            {
                string fake_name;
                int finger;
                int secure;
                bool isInt = int.TryParse(Admin_Pass.Text, out finger);
                bool isIntName = int.TryParse(Admin_acc.Text, out finger);
                if (isIntName == true || isInt == false)
                {
                    if (isIntName == true)
                    {
                        Admin_acc.BackColor = Color.Red;
                        MessageBox.Show("Name Consists Only Of Numbers, Try Again", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Admin_acc.Text = string.Empty;
                        Admin_acc.BackColor = Color.White;
                    }
                    else
                    {
                        fake_name = Admin_acc.Text;
                    }
                    if (isInt == false)
                    {
                        Admin_Pass.BackColor = Color.Red;
                        MessageBox.Show("Password Include Number And Character, Please Try Again", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Admin_Pass.Text = string.Empty;
                        Admin_Pass.BackColor = Color.White;
                    }
                    else
                    {
                        secure = Convert.ToInt32(Admin_Pass.Text);
                    }
                }
                else
                {
                    fake_name = Admin_acc.Text;
                    secure = Convert.ToInt32(Admin_Pass.Text);
                    string pass = Secret_Code.Text;
                    SqlConnection con = new SqlConnection(cStr);
                    string query = "select * from Account where TenTaiKhoan = @tentaikhoan ";
                    SqlCommand sql = new SqlCommand(query , con);
                    sql.Parameters.AddWithValue("@tentaikhoan", fake_name);
                    DataTable data = new DataTable();
                    SqlDataAdapter a = new SqlDataAdapter(sql);
                    a.Fill(data);
                    if (data.Rows.Count > 0)
                    {
                        MessageBox.Show("Bạn đã có sẵn trong hệ thống của tôi ...", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Admin_acc.Text = string.Empty;
                        Admin_Pass.Text = string.Empty;
                    }


                    else
                    {
                        if (pass == Pass_code)
                        {
                            SqlConnection connection = new SqlConnection(cStr);
                            string query2 = $"Insert into Account (TenTaiKhoan , MatKhau) values (@TaiKhoan , @MatKhau);";
                            SqlCommand command = new SqlCommand(query2, connection);
                            command.Parameters.AddWithValue("@TaiKhoan", Admin_acc.Text);
                            command.Parameters.AddWithValue("@MatKhau", Admin_Pass.Text);
                            SqlDataAdapter c = new SqlDataAdapter(command);
                            DataTable table = new DataTable();
                            c.Fill(data);
                            MessageBox.Show("Welcome To My Team \n We are Glad to Hear you joined us", "Anounment", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            MessageBox.Show("Please Re-SignIn To System", "InFormation", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            Form Customer = new DangNhap();
                            Customer.Left = this.Left;
                            Customer.Top = this.Top;
                            Customer.Show();
                            this.Close();
                        }
                        else
                        {
                            Secret_Code.BackColor = Color.Red;
                            MessageBox.Show("Please Re-Checked Your Admin Password !!!!!!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            Secret_Code.Text = string.Empty;
                            Secret_Code.BackColor = Color.White;
                        }
                    }
                }
            }
        }

        private void DangKy_Load(object sender, EventArgs e)
        {

            MessageBox.Show($"To create account by admin, you need a Passcode \n To have a passcode let decode this code: \n {Encrypt(Pass_code)}", "Challenge", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void HelpBut_MouseHover(object sender, EventArgs e)
        {
            MessageBox.Show($"{Encrypt(Pass_code)}");
        }

        private void DangKy_FormClosing(object sender, FormClosingEventArgs e)
        {
            var res = MessageBox.Show("Do You Want Exit From The Signing Up Form ???", "Anoun", MessageBoxButtons.YesNo);
            switch (res)
            {
                case DialogResult.No:
                    e.Cancel = true;
                    break;
                case DialogResult.Yes:
                    Form Custom = Application.OpenForms[0];
                    Custom.Left = this.Left;
                    Custom.Top = this.Top;
                    Custom.Show();
                    break;
            }
        }
    }
   
}
