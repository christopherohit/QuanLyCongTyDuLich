using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyCongTyDuLich
{
    public partial class ChinSuaDaiLy : Form
    {
        string cStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
        
        public ChinSuaDaiLy()
        {
            InitializeComponent();
        }

        private void ChinSuaDaiLy_Load(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count >= 0)
            {
                dataGridView1.Rows[0].Selected = true;
            }
            SendButton.Hide();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                pictureBox1.Image = new Bitmap(openFileDialog1.FileName);
            }
        }

        private void ChinSuaDaiLy_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {
                if (DialogResult != DialogResult.OK)
                {
                    return;
                }
            }
        }

        private void KiemTraThieu(Control c)
        {
            if (string.IsNullOrWhiteSpace(c.Text))
            {
                c.BackColor = Color.Red;
                MessageBox.Show("Please fill in the blank space", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                c.Text = string.Empty;
                c.BackColor = Color.White;
            }
        }

        private void SaveAgency_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cStr);
            bool flag = true;
            KiemTraThieu(NameBox);
            if (NameBox.Text.Length > 30 && NameBox.Text.Length <= 4)
            {
                NameBox.BackColor = Color.Red;
                MessageBox.Show("The Length of name isn't inconsonant. \n The name is belong from 4 to 50 characters", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                NameBox.Text = string.Empty;
                NameBox.BackColor = Color.White;
                flag = false;
            }
            else
            {
                for (int i = 0; i < NameBox.Text.Length; i++)
                {
                    if (NameBox.Text[i] >= '0' && NameBox.Text[i] <= '9')
                    {
                        NameBox.BackColor = Color.Red;
                        MessageBox.Show("The Name Just Contains Number ??? \n The Name Should be Include Number and Characters", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        NameBox.Text = string.Empty;
                        NameBox.BackColor = Color.White;
                        flag = false;
                        break;
                    }
                }
            }
            KiemTraThieu(DescriptionBox);
            if (DescriptionBox.Text.Length > 1000 || DescriptionBox.Text.Length < 12)
            {
                DescriptionBox.BackColor = Color.Red;
                MessageBox.Show("The Length of Description isn't inconsonant. \n The Description is belong from 12 to 1000 characters", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                DescriptionBox.BackColor = Color.White;
                DescriptionBox.Text = string.Empty;
            }
            else if (DescriptionBox.Text == null)
            {
                DescriptionBox.BackColor = Color.Red;
                MessageBox.Show("Please Something Into Blank space", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                DescriptionBox.Text = string.Empty;
                DescriptionBox.BackColor = Color.White;
            }
            bool hinhanh = false;
            if (pictureBox1.Image == null)
            {
                pictureBox1.BackColor = Color.Gray;
                MessageBox.Show("Have You Choose The Picture ???", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                pictureBox1.BackColor = Color.White;
                flag = false;
            }


        }

        private void CancelSaving_Click(object sender, EventArgs e)
        {
            if (DialogResult != DialogResult.OK)
            {
                return;
            }
        }

        private void AddTrip_Click(object sender, EventArgs e)
        {
            Form frm = new ThemChuyem();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                // select and scroll to the last row
                if (dataGridView1.Rows.Count > 1)
                {
                    var lastIdx = dataGridView1.Rows.Count - 1;
                    dataGridView1.Rows[lastIdx].Selected = true;
                    dataGridView1.FirstDisplayedScrollingRowIndex = lastIdx;
                }
            }
        }

        private void EditTrip_Click(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {
                var sua = dataGridView1.SelectedRows[0].DataBoundItem;
                Form pf = new ThemChuyem();

            }
            else
            {
                MessageBox.Show("Sorry,there is nothing to edit.By the way, add some potions or delete the agency..");
            }
        }

        private void DeleteTrip_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cStr);
            if (dataGridView1.Rows.Count > 0)
            {
                var xoa = dataGridView1.SelectedRows[0];
                var nani = MessageBox.Show($"Do you want really delete {xoa.Selected.ToString()}" , "Warning" , MessageBoxButtons.YesNo , MessageBoxIcon.Warning);
                if (nani == DialogResult.Yes)
                {
                    string xoachuyendi = "Delete From PortionTripClient where TenTrip = @tenchuyendi ";
                    SqlCommand command = new SqlCommand(xoachuyendi, con);
                    command.Parameters.AddWithValue("@tenchuyendi", xoa.Selected.ToString());
                    SqlDataAdapter a = new SqlDataAdapter(command);
                    DataTable data = new DataTable();
                    a.Fill(data);
                    dataGridView1.DataSource = data;
                }
            }
            else
            {
                MessageBox.Show("Sorry, there is nothing to delete.By the way, add some potions or delete the agency..", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {
                for(int i = 0; i < dataGridView1.Rows.Count; i++)
                {
                    if (dataGridView1.Rows[i].Selected == true)
                    {
                        break;
                    }else if (i + 1 == dataGridView1.Rows.Count)
                    {
                        dataGridView1.Rows[0].Selected = true;
                    }
                }
            }
        }

        private void SendButton_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Added!", "Information" , MessageBoxButtons.OK , MessageBoxIcon.Information) ;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
