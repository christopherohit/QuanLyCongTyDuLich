using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuanLyCongTyDuLich
{
    public partial class DangNhap : Form
    {
        public DangNhap()
        {
            InitializeComponent();
        }

        private void InBut_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(UserBox.Text) || string.IsNullOrWhiteSpace(PassBox.Text))
            {
                if (string.IsNullOrWhiteSpace(UserBox.Text))
                {
                    UserBox.BackColor = Color.Red;
                }
                if (string.IsNullOrWhiteSpace(PassBox.Text))
                {
                    PassBox.BackColor = Color.Red;
                }

                MessageBox.Show("Hãy điền vào chỗ trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                UserBox.Text = string.Empty;
                PassBox.Text = string.Empty;
                UserBox.BackColor = Color.White;
                PassBox.BackColor = Color.White;
            }
            else if (UserBox.Text.Length <= 3 || UserBox.Text.Length >= 20)
            {
                UserBox.BackColor = Color.Red;
                MessageBox.Show("Độ dài tài khoản không phù hợp, \n độ dài phải nhỏ hơn 20 và dài hơn 3 chữ cái \n Vui lòng thử lại", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                UserBox.Text = string.Empty;
                UserBox.BackColor = Color.White;
            }
            else if (PassBox.Text.Length < 6 || PassBox.Text.Length > 30)
            {
                PassBox.BackColor = Color.Red;
                MessageBox.Show("Độ dài mật khẩu không phù hợp, \n độ dài phải nhỏ hơn 20 và dài hơn 3 chữ cái \n Vui lòng thử lại", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                PassBox.Text = string.Empty;
                PassBox.BackColor = Color.White;
            }
            else
            {
                string nickname;
                int password;
                bool isInt = int.TryParse(PassBox.Text, out int number);
                bool isIntName = int.TryParse(UserBox.Text, out number);
                if (isIntName == true || isInt == false)
                {
                    if (isIntName == true)
                    {
                        UserBox.BackColor = Color.Red;
                        MessageBox.Show("Tài Khoản vừa nhập chỉ có số không có ký tự khác \n Vui lòng thừ lại", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        UserBox.Text = string.Empty;
                        UserBox.BackColor = Color.White;
                    }
                    else
                    {
                        nickname = UserBox.Text;
                    }
                    if (isInt == false)
                    {
                        PassBox.BackColor = Color.Red;
                        MessageBox.Show("Mật khẩu chỉ Bao gồm số \n Vui lòng thử lại", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        PassBox.Text = string.Empty;
                        PassBox.BackColor = Color.White;
                    }
                    else
                    {
                        password = Convert.ToInt32(PassBox.Text);
                    }
                }
                else
                {
                    nickname = UserBox.Text;
                    password = Convert.ToInt32(PassBox.Text);
                    // Check User Exist.
                    string conStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
                    SqlConnection con = new SqlConnection(conStr);
                   
                    string query = "select * from Account where AdminName = @tentaikhoan and PassWordAdmin = @matkhau";
                    SqlCommand command = new SqlCommand(query,con);
                    command.Parameters.AddWithValue("@tentaikhoan", nickname);
                    command.Parameters.AddWithValue("@matkhau", password);
                    SqlDataAdapter a = new SqlDataAdapter(command);
                    DataTable data = new DataTable();
                    a.Fill(data);
                    if (data.Rows.Count > 0)
                    {
                        MessageBox.Show($"Hello, {nickname}! Hy vọng bạn có một ngày tót lành ", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Form aform = new TrangChu();
                        aform.Show();
                        this.Hide();
                    }
                    else
                    {
                        MessageBox.Show("Xin tài khoản không có sẵn \n Xin vui Thu Lai", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        UserBox.Text = string.Empty;
                        PassBox.Text = string.Empty;
                    }


                }
            }
        }

        private void UpBut_Click(object sender, EventArgs e)
        {
            Form form = new DangKy();
            form.Show();
            this.Hide();
        }

        private void UserBox_TextChanged(object sender, EventArgs e)
        {
            (sender as Control).BackColor = Color.White;
        }

        private void PassBox_TextChanged(object sender, EventArgs e)
        {
            (sender as Control).BackColor = Color.White;
        }

        private void HelpBut_MouseHover(object sender, EventArgs e)
        {
            MessageBox.Show("Xin chào! \n Tên có thể bao gồm bất kỳ chữ cái nào (nhiều hơn 3 dưới 20) \n Mật khẩu chỉ được bao gồm các số (nhiều hơn 6 ít hơn 30)");
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {

            var res = MessageBox.Show("Bạn Có Thật Sự Muốn Thoát ?", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            switch (res)
            {
                case DialogResult.OK:
                    Application.Exit();
                    break;
                case DialogResult.Cancel:
                    e.Cancel = true;
                    break;
            }
        }
    }
}
