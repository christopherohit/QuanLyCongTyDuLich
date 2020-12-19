using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using System.Linq;

namespace QuanLyCongTyDuLich
{

    public partial class TrangChu : Form
    {
        string cStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
        public TrangChu()
        {
            InitializeComponent();
            loadTripInAgencyGridView();
            
        }

        private void TrangChu_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'quanLyDuLichDataSet4.InforBookTrip' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'quanLyDuLichDataSet3.InforBookTrip' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'quanLyDuLichDataSet3.AccountForClient' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'quanLyDuLichDataSet3.HuongDanvien' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'quanLyDuLichDataSet2.Account' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'quanLyDuLichDataSet1.PortionTripClient' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'quanLyDuLichDataSet.AgencyForClient' table. You can move, or remove it, as needed.

            string conStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
            SqlConnection con = new SqlConnection(conStr);
            string query = "select * from AGENCYFORAdmin";
            SqlCommand command = new SqlCommand(query, con);
            SqlDataAdapter a = new SqlDataAdapter(command);
            DataTable data = new DataTable();
            a.Fill(data);
            AgencyGribView.DataSource = data;
            if (AgencyGribView.Rows.Count > 0)
            {
                for ( int i = 0; i < AgencyGribView.Rows.Count; i++)
                {
                    if(AgencyGribView.Rows[i].Selected == true)
                    {
                        string ten = AgencyGribView.Rows[i].Cells["TenDaiLy"].ToString();
                        Display(ten);
                        
                    }else if (i + 1 == AgencyGribView.Rows.Count)
                    {
                        AgencyGribView.Rows[0].Selected = true;
                    }
                }
            }

            string truyvan = "select * from ChuyenDi where TinhTrang = 'Sold Out'";
            SqlCommand sqlCommand = new SqlCommand(truyvan, con);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataTable hethang = new DataTable();
            adapter.Fill(hethang);
            SoldOutGridView.DataSource = hethang;
            string query5 = "select * from ChuyenDi where TinhTrang = 'Future Trip'";
            SqlCommand command1 = new SqlCommand(query5, con);
            SqlDataAdapter adapter1 = new SqlDataAdapter(command1);
            DataTable tuonglai = new DataTable();
            adapter1.Fill(tuonglai);
            FutureTripGribView.DataSource = tuonglai;

            string sieukhuyenmai = "select * from ChuyenDi where TinhTrang = 'Hot Sale'";
            SqlCommand command2 = new SqlCommand(sieukhuyenmai, con);
            SqlDataAdapter adapter2 = new SqlDataAdapter(command2);
            DataTable hientai = new DataTable();
            adapter2.Fill(hientai);
            HotSaleGribView.DataSource = hientai;

            string khachhang = "select TENTAIKHOAN , Emails from AccountForClient ";
            SqlCommand command3 = new SqlCommand(khachhang, con);
            SqlDataAdapter adapter3 = new SqlDataAdapter(command3);
            DataTable khach = new DataTable();
            adapter3.Fill(khach);
            CustomerGribView.DataSource = khach;

            string thongtindathang = "select go.TenDaiLy, go.TenDiaDiem , ibt.TenTaiKhoan , go.HuongDanVien, go.DichVuFree , go.Giaien from TripAvailable trip , ChuyenDi go , InforBookTrip ibt ";
            SqlCommand command5 = new SqlCommand(thongtindathang, con);
            SqlDataAdapter adapter5 = new SqlDataAdapter(command5);
            DataTable dathang2 = new DataTable();
            adapter5.Fill(dathang2);
            OrderGribView.DataSource = dathang2;

            string nhanvien = "Select * From HuongDanVien";
            SqlCommand command4 = new SqlCommand(nhanvien, con);
            SqlDataAdapter adapter4 = new SqlDataAdapter(command4);
            DataTable guides = new DataTable();
            adapter4.Fill(guides);
            for (int i = 0; i < EmployGribView.Columns.Count; i++)
            {
                if (EmployGribView.Columns[i] is DataGridViewImageColumn)
                {
                    ((DataGridViewImageColumn)EmployGribView.Columns[i]).ImageLayout = DataGridViewImageCellLayout.Stretch;
                        break;
                }
            }
            EmployGribView.DataSource = guides;

        }
        // To Encrypt Password before put out it 
        public string Encrypt(string toEncrypt)
        {
            bool useHashing = true;
            byte[] mangkhoa;
            byte[] mahoamang = UTF8Encoding.UTF8.GetBytes(toEncrypt);

            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                mangkhoa = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes("abc"));
            }
            else
            {
                mangkhoa = UTF8Encoding.UTF8.GetBytes("abc");
            }
            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = mangkhoa;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cryptoTransform = tdes.CreateEncryptor();
            byte[] ketqua = cryptoTransform.TransformFinalBlock(mahoamang, 0, mahoamang.Length);

            return Convert.ToBase64String(ketqua, 0, ketqua.Length);
        }

        /* MainForm - Help - AboutSoftware
         This's used to decorate action when user need to the help about aplication
         */
        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(@"D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\DocumentsForHelp\ChiTietPhanMem.docx");

        }

        /* MainForm - File - Exit
      It Used To Exit the program 
      */
        private void exitToolStripMenuItem_Click(object sender,FormClosingEventArgs e)
        {
            var res = MessageBox.Show("Bạn Có Thật Sư Muốn Thoát", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            switch (res)
            {
                case DialogResult.OK:
                    Close();
                    break;
                case DialogResult.Cancel:
                    e.Cancel = true;
                    break;
            }
        }
// Exit program too
        private void TrangChu_FormClosing(object sender, FormClosingEventArgs e)
        {
            
            var res = MessageBox.Show("Do You Want To Exit", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

            switch (res)
            {
                case DialogResult.OK:
                    System.Windows.Forms.Application.Exit();
                    break;
                case DialogResult.Cancel:
                    e.Cancel = true;
                    break;
            }
        }

        private void addToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var pf = new ChinSuaDaiLy();
        }

        private void aToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Starting laughing Brower to Github....
            System.Diagnostics.Process.Start("https://github.com/christopherohit");
            Thread.Sleep(3000);
            var ip = MessageBox.Show("Help Me Follow It \n Thanks You Too Much", "Appeal", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (ip == DialogResult.Yes)
            {
                MessageBox.Show("Thanks You Following Me");
            }
            else
            {
                MessageBox.Show("Thanks For Trial This Product");
            }
        }

        private void privacyAndLiceneseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(@"D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\DocumentsForHelp\License.txt");
        }

        private void globallyForQuestionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(@"D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\DocumentsForHelp\Question.txt");
        }
        void loadTripInAgencyGridView()
        {
            SqlConnection cnn = new SqlConnection(cStr);
            string query1 = "select TenDiaDiem ,TinhTrang , SoLuong from ChuyenDi ";
            SqlCommand command1 = new SqlCommand(query1, cnn);
            SqlDataAdapter b = new SqlDataAdapter(command1);
            DataTable table = new DataTable();
            b.Fill(table);
            TripInAgencyGridView.DataSource = table;
        }

        // Display Available
        private void Display(string TenDaiLy)
        {
            SqlConnection cnn = new SqlConnection(cStr);
            string query1 = "select TenDiaDiem, TinhTrang , SoLuong from ChuyenDi where TenDaiLy in (select TenDaiLy from AGENCYFORAdmin where TenDaiLy = @tendaily) ";
            SqlCommand command1 = new SqlCommand(query1, cnn);
            command1.Parameters.AddWithValue("@tendaily", TenDaiLy);
            SqlDataAdapter b = new SqlDataAdapter(command1);
            DataTable table = new DataTable();
            b.Fill(table);
            TripInAgencyGridView.DataSource = table;
        }
        private void ForBibButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cStr);
            if (CustomerGribView.Rows.Count > 0)
            {
                for (int i = 0; i < CustomerGribView.Rows.Count; i++)
                {
                    if (CustomerGribView.Rows[i].Selected == true)
                    {
                        break;
                    }
                    else if (i + 1 == CustomerGribView.Rows.Count)
                    {
                        CustomerGribView.Rows[0].Selected = true;
                    }
                }
                var xoaclient = CustomerGribView.SelectedRows[0];
                var res = MessageBox.Show($"Do you want to delete Client {xoaclient.Selected.ToString()} ?", "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (res == DialogResult.Yes)
                {
                    string xoacustomer = "Delete from AccountForClient where TenTaiKhoan = @tentaikhoan";
                    SqlCommand command = new SqlCommand(xoacustomer, con);
                    command.Parameters.AddWithValue("@tentaikhoan", xoaclient.Selected.ToString());
                    SqlDataAdapter a = new SqlDataAdapter(command);
                    DataTable data = new DataTable();
                    a.Fill(data);
                    CustomerGribView.DataSource = data;
                }
            }
            else
            {
                MessageBox.Show("The list of clients is empty( Banning from app is impossible");
            }
        }
        //
        private void AgencyGribView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            if(index >= 0)
            {
                string ten = AgencyGribView.Rows[index].Cells["TenDaiLy"].Value.ToString();
                Display(ten);
            }
                        

        }
        private void SaveCompleteOrders()
        {
            string path = @"D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\DataCustomer(HistoryWork)\CompleteSave.docx";

            try
            {
                // Check if file already exists. If yes, delete it.     
                if (File.Exists(path))
                {
                    File.Delete(path);
                }

                //Create New File
                using (StreamWriter sw = File.CreateText(path))
                {
                    // Add To Text
                    sw.WriteLine("-----------------------------");
                    sw.WriteLine("^^-------------------------^^");
                    sw.WriteLine("^^^^^^^^^^---------^^^^^^^^^^");
                    sw.WriteLine();
                    sw.WriteLine("Ho Va Ten");
                }
            }
            catch
            {

            }
        }

        private void TripInAgencyGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void deleteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cStr);
            if (AgencyGribView.Rows.Count > 0)
            {
                var xoadaily = AgencyGribView.SelectedRows[0];
                var res = MessageBox.Show($"Do you Want to delete {AgencyGribView.SelectedRows.ToString()} Agency", "Warning", MessageBoxButtons.YesNo , MessageBoxIcon.Warning);
                if (res == DialogResult.Yes)
                {
                    string xoa = "delete From AgencyForClient where TenDaiLy = @tendaily";
                    SqlCommand command = new SqlCommand(xoa, con);
                    command.Parameters.AddWithValue("@tendaily", AgencyGribView.SelectedRows.ToString());
                    SqlDataAdapter a = new SqlDataAdapter(command);
                    DataTable data = new DataTable();
                    a.Fill(data);
                    AgencyGribView.DataSource = data;
                }
            }
        }

        private void EmployGribView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (EmployGribView.Rows.Count > 0)
            {
                for (int i = 0; i < EmployGribView.Rows.Count; i++)
                {

                }
            }
        }

        private void ExitButton_Click(object sender, EventArgs e)
        {
            
        }

        private void OrderGribView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            if ( index >= 0)
            {
               string thongting = OrderGribView.Rows[index].Cells[1].Value.ToString();
            }
        }

        private void CustomerGribView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            if (index >= 0)
            {
                string ten = CustomerGribView.Rows[index].Cells["TenTaiKhoan"].Value.ToString();
                DonDatHang(ten);
            }
        }
        private void DonDatHang(string TenTaiKhoan)
        {
            SqlConnection connection = new SqlConnection(cStr);
            string thongtindathang = "select go.TenDaiLy, go.TenDiaDiem , ibt.TenTaiKhoan , go.HuongDanVien, go.DichVuFree , go.Giaien from TripAvailable trip , ChuyenDi go , InforBookTrip ibt Where  trip.TenDiaDiem = go.TenDiaDiem And go.MaChuyen = ibt.MaChuyen anf ibt.TenTaiKhoan = @tentaikhoan";
            SqlCommand command5 = new SqlCommand(thongtindathang, connection);
            command5.Parameters.AddWithValue("@tentaikhoan", TenTaiKhoan);
            SqlDataAdapter adapter5 = new SqlDataAdapter(command5);
            DataTable dathang2 = new DataTable();
            adapter5.Fill(dathang2);
            OrderGribView.DataSource = dathang2;
        }
        
    }
    
}

        /* MainForm - Management - Add
      This Action Use To If You Want Add Client into Your data
      */

    /*
This's Container use to recall for action save
*/
    // Container For use to put out data to file 



